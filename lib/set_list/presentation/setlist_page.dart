import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gals_app/component/base_main_page.dart';
import 'package:gals_app/component/base_text_button.dart';
import 'package:gals_app/resources/assets/images.dart';
import 'package:gals_app/set_list/set_list_notifier.dart';
import 'package:gals_app/util/color.dart';
import 'package:gals_app/util/custom_dialog.dart';
import 'package:gals_app/util/font.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart' as picker;
import 'package:share_plus/share_plus.dart';

class SetListPage extends StatefulHookConsumerWidget {
  const SetListPage({super.key});

  static const String path = 'setListPage';
  static const String name = 'setListPage';

  @override
  ConsumerState<SetListPage> createState() => _SetListPageState();
}

class _SetListPageState extends ConsumerState<SetListPage> {
  List<Widget> dropdownWidget = [];
  List<String> setMusicList = [];
  int setListSongIndex = 0;
  String selectValue = '';
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(setListNotifier.notifier).fetchMusicList();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Firebaseから取得してきた音楽情報
    final musics = ref.watch(setListNotifier.select((value) => value.musicList));
    // DropDownがnullか判断するためのFlg
    final checkFlg = ref.watch(setListNotifier.select((value) => value.isDropDownNull));
    // 日時選択で選んだ値を監視するための変数
    final selectDate = ref.watch(setListNotifier.select((value) => value.selectedDateTimeToString));

    final hashTagTextController = ref.read(hashTagText);
    final liveHouseTextController = ref.read(liveHouseText);

    int ranNum = 0;
    return BaseMainPage(
      onPop: true,
      showAppbar: true,
      title: 'セットリスト',
      child: musics.when(
        data: (galsMusic) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'ライブ会場:',
                        style: UseGoogleFont.zenKaku.style.copyWith(fontSize: size16, color: GalsColor.backgroundColor),
                      ),
                      Flexible(
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: GalsColor.backgroundColor,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: GalsColor.backgroundColor,
                              ),
                            ),
                          ),
                          controller: liveHouseTextController,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          picker.DatePicker.showDatePicker(
                            context,
                            locale: picker.LocaleType.jp,
                            minTime: DateTime(2021),
                            maxTime: DateTime.now(),
                            currentTime: DateTime.now(),
                            onConfirm: (DateTime selectDateTime) {
                              ref.watch(setListNotifier.notifier).isDateTimeToString(selectDateTime);
                            },
                          );
                        },
                        child: Text(
                          selectDate != '' ? selectDate : '日付選択',
                          style:
                              UseGoogleFont.zenKaku.style.copyWith(fontSize: size16, color: GalsColor.backgroundColor),
                        ),
                      )
                    ],
                  ),
                  for (Widget dropDownWidget in dropdownWidget) ...{
                    dropDownWidget,
                  },
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '#',
                          style:
                              UseGoogleFont.zenKaku.style.copyWith(color: GalsColor.backgroundColor, fontSize: size18),
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: GalsColor.backgroundColor,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: GalsColor.backgroundColor,
                                ),
                              ),
                            ),
                            controller: hashTagTextController,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: AbsorbPointer(
                            absorbing: checkFlg,
                            child: GestureDetector(
                              onTap: () => plusWidget(galsMusic, checkFlg),
                              child: FaIcon(
                                FontAwesomeIcons.plus,
                                size: 36,
                                color: GalsColor.backgroundColor,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => minusWidget(),
                          child: FaIcon(
                            FontAwesomeIcons.minus,
                            size: 36,
                            color: GalsColor.backgroundColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: BaseTextButton(
                            onPressed: () async {
                              FocusManager.instance.primaryFocus?.unfocus();
                              setState(() {
                                ranNum = Random().nextInt(GalsAppAssetImage.galsBitPicture.length);
                              });
                              final box = context.findRenderObject() as RenderBox?;
                              if (setMusicList.isEmpty) {
                                return setListEmptyError(context, ranNum);
                              } else if (selectDate.isEmpty) {
                                return dateError(context, ranNum);
                              } else {
                                ref.watch(setListNotifier.notifier).shareText(
                                      liveHouseTextController.text,
                                      selectDate,
                                      setMusicList,
                                      hashTagTextController.text,
                                    );
                                await Share.share(
                                  ref.watch(setListNotifier.select((value) => value.shareText)),
                                  sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
                                );
                              }
                            },
                            buttonText: '共有する',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        error: (Object error, StackTrace stackTrace) {
          return const SizedBox.shrink();
        },
        loading: () => const SizedBox.shrink(),
      ),
    );
  }

  /// DropDown追加処理
  void plusWidget(List<String> musicItems, bool checkFlg) {
    final setListNotifierProvider = ref.watch(setListNotifier.notifier);
    setListNotifierProvider.isDropDownValueNull(checkFlg);
    setMusicList.add('');
    dropdownWidget.add(
      DropDownMusicListWidget(
        music: musicItems,
        index: setListSongIndex,
        setList: setMusicList,
        onValueChanged: (String? value, int index) {
          if (setMusicList.length - 1 > index) {
            ref.watch(setListNotifier.notifier).isDropDownValueNull(false);
            return;
          }
          ref.watch(setListNotifier.notifier).isDropDownValueNull(true);
        },
      ),
    );

    setListSongIndex = setListSongIndex + 1;
  }

  /// DropDown削除処理
  void minusWidget() {
    if (dropdownWidget.isEmpty) {
      ref.watch(setListNotifier.notifier).isDropDownValueNull(true);
      return;
    }
    if (dropdownWidget.length == 1) {
      setListSongIndex = 0;
    } else {
      setListSongIndex = setListSongIndex - 1;
    }
    ref.watch(setListNotifier.notifier).isDropDownValueNull(true);
    setState(() {
      setMusicList.removeLast();
      dropdownWidget.removeLast();
    });
  }
}

///
/// DropDownのList格納用Widget
///
class DropDownMusicListWidget extends StatefulWidget {
  const DropDownMusicListWidget({
    super.key,
    required List<String> music,
    required int index,
    required this.onValueChanged,
    required List<String> setList,
  })  : _music = music,
        _index = index,
        _setList = setList;

  final List<String> _music;
  final int _index;
  final Function(String?, int) onValueChanged;
  final List<String> _setList;

  @override
  State<DropDownMusicListWidget> createState() => _DropDownMusicListWidgetState();
}

class _DropDownMusicListWidgetState extends State<DropDownMusicListWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('${widget._index + 1}曲目：'),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: DropdownButtonFormField(
              style: UseGoogleFont.zenKaku.style.copyWith(
                fontSize: size16,
                color: GalsColor.blackColor,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
              menuMaxHeight: 300,
              elevation: 1,
              dropdownColor: GalsColor.whiteColor,
              items:
                  widget._music.map((musicList) => DropdownMenuItem(value: musicList, child: Text(musicList))).toList(),
              onChanged: (String? value) {
                if (value == null || value.isEmpty) {
                  return;
                }
                widget._setList[widget._index] = value;

                widget.onValueChanged(value, widget._index);
              },
            ),
          ),
        ),
      ],
    );
  }
}

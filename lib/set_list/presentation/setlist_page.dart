import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gals_app/component/base_main_page.dart';
import 'package:gals_app/component/base_text_button.dart';
import 'package:gals_app/set_list/set_list_notifier.dart';
import 'package:gals_app/set_list/state/setlist_state.dart';
import 'package:gals_app/util/color.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_plus/share_plus.dart';

class SetListPage extends StatefulHookConsumerWidget {
  const SetListPage({super.key});

  static const String path = 'setListPage';
  static const String name = 'setListPage';

  @override
  ConsumerState<SetListPage> createState() => _SetListPageState();
}

class _SetListPageState extends ConsumerState<SetListPage> {
  final FocusNode _focusNode = FocusNode();
  List<Widget> dropdown = [];
  int setListSongIndex = 1;
  List<String> setLists = [];
  @override
  void initState() {
    super.initState();
    // ウィジェットが表示されたときにフォーカスを当てる
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.addListener(() {
        FocusScope.of(context).requestFocus(_focusNode);
      });
    });
  }

  void plusWidget(SetListState musicItems) {
    setState(() {
      setLists.add('');
      dropdown.add(DropDownMusicListWidget(
        focusNode: _focusNode,
        music: musicItems,
        index: dropdown.isEmpty ? setListSongIndex : setListSongIndex = setListSongIndex + 1,
        setLists: setLists,
        onValueChanged: (String? value) {
          _handleValueChanged(value ?? '', setListSongIndex - 1);
        },
      ));
    });
  }

  void minusWidget() {
    if (dropdown.isEmpty) {
      return;
    }
    setListSongIndex = setListSongIndex - 1;
    setLists.removeLast();
    setState(() {
      dropdown.removeLast();
    });
  }

  @override
  Widget build(BuildContext context) {
    final musics = ref.watch(setListNotifier.select((value) => value));
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
                      const Text('ライブ会場:'),
                      Expanded(child: TextFormField()),
                    ],
                  ),
                  for (Widget dropDownWidget in dropdown) ...{
                    dropDownWidget,
                  },
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              plusWidget(galsMusic);
                            });
                          },
                          child: FaIcon(
                            FontAwesomeIcons.plus,
                            size: 36,
                            color: GalsColor.backgroundColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            minusWidget();
                          });
                        },
                        child: FaIcon(
                          FontAwesomeIcons.minus,
                          size: 36,
                          color: GalsColor.backgroundColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: BaseTextButton(
                            onPressed: () {
                              print(setLists);
                            },
                            buttonText: '共有する'),
                      ),
                    ],
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

  void _handleValueChanged(String? value, int index) => setLists[index] = value ?? '';
}

class DropDownMusicListWidget extends StatefulWidget {
  const DropDownMusicListWidget({
    super.key,
    required FocusNode focusNode,
    required SetListState music,
    required int index,
    required List<String> setLists,
    required this.onValueChanged,
  })  : _focusNode = focusNode,
        _music = music,
        _index = index;

  final FocusNode _focusNode;
  final SetListState _music;
  final int _index;
  final Function(String?) onValueChanged;

  @override
  State<DropDownMusicListWidget> createState() => _DropDownMusicListWidgetState();
}

class _DropDownMusicListWidgetState extends State<DropDownMusicListWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text('${widget._index}曲目:'),
          Expanded(
            child: DropdownButtonFormField(
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
              value: widget._music.musicList.first,
              menuMaxHeight: 200,
              focusNode: widget._focusNode,
              elevation: 4,
              items: widget._music.musicList
                  .map((musicList) => DropdownMenuItem(value: musicList, child: Text(musicList)))
                  .toList(),
              onChanged: (String? value) {
                setState(
                  () {
                    widget.onValueChanged(value);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

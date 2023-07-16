import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:gals_app/set_list/domain/set_list_service.dart';
import 'package:gals_app/set_list/state/setlist_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

final setListNotifier = NotifierProvider.autoDispose<SetListNotifier, SetListState>(SetListNotifier.new);

final liveHouseText = Provider((ref) => TextEditingController());
final hashTagText = Provider((ref) => TextEditingController());

class SetListNotifier extends AutoDisposeNotifier<SetListState> {
  @override
  SetListState build() {
    ref.onDispose(() {
      ref.watch(liveHouseText).clear();
      ref.watch(hashTagText).clear();
      print('date');
    });
    return const SetListState();
  }

  // 初回起動時にFirebaseから値を取得する。
  Future<void> fetchMusicList() async {
    final setListServiceProvider = ref.read(setListService);
    state = state.copyWith(
      musicList: await AsyncValue.guard(() => setListServiceProvider.fetchAllMusicList()),
    );
  }

  void isDropDownValueNull(bool dropdownFlg) {
    state = state.copyWith(isDropDownNull: !dropdownFlg);
  }

  void isDateTimeToString(DateTime selectDateTime) {
    if (DateTime.now().year == selectDateTime.year) {
      state = state.copyWith(
        selectedDateTimeToString: DateFormat('M月dd日').format(selectDateTime),
      );
    } else {
      state = state.copyWith(
        selectedDateTimeToString: DateFormat('yyyy年M月dd日').format(selectDateTime),
      );
    }
  }

  ///
  /// セットリスト共有
  /// [liveHouse] liveHouseの場所
  /// [selectDate] 選択した日付
  /// [setList] セットリスト
  /// [hashTag]　ハッシュタグ
  void shareText(String liveHouse, String selectDate, List<String> setList, String hashTag) {
    String text = '';
    if (liveHouse.isEmpty) {
      text = '$selectDate\n${setList.join('\n')}\n\n#$hashTag';
    } else if (hashTag.isEmpty) {
      text = '$liveHouse $selectDate\n${setList.join('\n')}';
    } else {
      text = '$liveHouse $selectDate\n${setList.join('\n')}\n\n#$hashTag';
    }
    state = state.copyWith(shareText: text);
  }
}

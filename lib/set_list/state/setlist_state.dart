import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'setlist_state.freezed.dart';

@freezed
class SetListState with _$SetListState {
  const factory SetListState({
    @Default(false) bool isDropDownNull,
    // Firebaseから取得するGALSの楽曲データ
    @Default(AsyncValue.loading()) AsyncValue<List<String>> musicList,
    @Default('') String selectedDateTimeToString,
    @Default('') String shareText,
  }) = _SetListState;
}

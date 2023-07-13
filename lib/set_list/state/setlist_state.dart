import 'package:freezed_annotation/freezed_annotation.dart';

part 'setlist_state.freezed.dart';

@freezed
class SetListState with _$SetListState {
  const factory SetListState({
    required List<String> musicList,
  }) = _SetListState;
}

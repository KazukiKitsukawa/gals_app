import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gals_app/calender/state/viewitem/calendar_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'calendar_state.freezed.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState({
    // メンバー情報
    @Default(AsyncValue.loading()) AsyncValue<List<CalendarItem>> calenderItem,
  }) = _CalendarState;
}

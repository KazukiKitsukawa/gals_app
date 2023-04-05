import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gals_app/calendar_detail/domain/state/viewitem/calendar_detail_view_item.dart';
import 'package:gals_app/calender/state/viewitem/calendar_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'calendar_detail_state.freezed.dart';

@freezed
class CalendarDetailState with _$CalendarDetailState {
  const factory CalendarDetailState({
    // カレンダー情報
    @Default(AsyncValue.loading())
        AsyncValue<CalendarDetailViewItem> calenderItem,
  }) = _CalendarDetailState;
}

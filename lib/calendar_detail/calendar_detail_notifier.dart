import 'dart:convert';

import 'package:gals_app/calendar_detail/domain/calendar_detail_service.dart';
import 'package:gals_app/calendar_detail/domain/state/calendar_detail_state.dart';
import 'package:gals_app/calender/state/viewitem/calendar_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final calenderDetailNotifier = StateNotifierProvider.autoDispose<
    CalendarDetailNotifier, CalendarDetailState>((ref) {
  return CalendarDetailNotifier(service: ref.read(calendarDetailService));
});

class CalendarDetailNotifier extends StateNotifier<CalendarDetailState> {
  CalendarDetailNotifier({required CalendarDetailService service})
      : _calendarDetailService = service,
        super(const CalendarDetailState());

  final CalendarDetailService _calendarDetailService;

  /// 初回起動画面
  Future<void> init(String calendarItem) async {
    final Map<String, dynamic> liveInfo = json.decode(calendarItem);
    final liveInfoItem = CalendarItem.fromJson(liveInfo);
    state = state.copyWith(
        calenderItem: AsyncValue.data(
            _calendarDetailService.jsonDecodeViewItem(liveInfoItem)));
  }
}

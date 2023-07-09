import 'dart:convert';

import 'package:gals_app/calendar_detail/domain/calendar_detail_service.dart';
import 'package:gals_app/calendar_detail/domain/state/calendar_detail_state.dart';
import 'package:gals_app/calender/state/viewitem/calendar_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final calenderDetailNotifier =
    NotifierProvider<CalendarDetailNotifier, CalendarDetailState>(CalendarDetailNotifier.new);

class CalendarDetailNotifier extends Notifier<CalendarDetailState> {
  @override
  CalendarDetailState build() {
    return const CalendarDetailState();
  }

  /// 初回起動画面
  Future<void> init(String calendarItem) async {
    final CalendarDetailService notifier = ref.read(calendarDetailService);
    final Map<String, dynamic> liveInfo = json.decode(calendarItem);
    final liveInfoItem = CalendarItem.fromJson(liveInfo);

    state = state.copyWith(
      calenderItem: await AsyncValue.guard(() async => notifier.jsonDecodeViewItem(liveInfoItem)),
    );
  }
}

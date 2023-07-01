import 'dart:async';

import 'package:gals_app/calender/domain/calendar_service.dart';
import 'package:gals_app/calender/state/calendar_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final calenderNotifier = NotifierProvider<CalendarNotifier, CalendarState>(CalendarNotifier.new);

class CalendarNotifier extends Notifier<CalendarState> {
  /// 初回起動画面
  @override
  CalendarState build() {
    return const CalendarState();
  }

  Future<void> init() async {
    final CalendarService calenderService = ref.read(calendarService);
    state = state.copyWith(
      calenderItem: await AsyncValue.guard(
        () => calenderService.fetchCalendarItems(),
      ),
    );
  }
}

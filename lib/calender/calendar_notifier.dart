import 'package:gals_app/calender/domain/calendar_service.dart';
import 'package:gals_app/calender/state/calendar_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final calenderNotifier =
    StateNotifierProvider.autoDispose<CalendarNotifier, CalendarState>((ref) {
  return CalendarNotifier(service: ref.read(calendarService));
});

class CalendarNotifier extends StateNotifier<CalendarState> {
  CalendarNotifier({required CalendarService service})
      : _calenderService = service,
        super(const CalendarState());

  final CalendarService _calenderService;

  /// 初回起動画面
  Future<void> init() async {
    state = state.copyWith(
        calenderItem:
            AsyncValue.data(await _calenderService.fetchCalendarItems()));
  }
}

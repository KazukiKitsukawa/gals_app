import 'package:gals_app/calender/infrastructure/calendar_repository.dart';
import 'package:gals_app/calender/state/viewitem/calendar_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final calendarService = Provider.autoDispose(
  (ref) => CalendarService(
    calendarRepository: ref.read(calendarRepository),
  ),
);

class CalendarService {
  CalendarService({
    required CalendarRepository calendarRepository,
  }) : _calendarRepository = calendarRepository;

  final CalendarRepository _calendarRepository;

  Future<List<CalendarItem>> fetchCalendarItems() async =>
      await _calendarRepository.fetchGoogleCalendarEvent();
}

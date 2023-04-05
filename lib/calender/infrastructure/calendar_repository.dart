import 'package:gals_app/api/gals_dio.dart';
import 'package:gals_app/api/google_calendar.dart';
import 'package:gals_app/calender/state/viewitem/calendar_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final calendarRepository = Provider((ref) {
  return CalendarRepository(
    googleCalendar: GoogleCalendar(GalsDio.create()),
  );
});

class CalendarRepository {
  const CalendarRepository({required this.googleCalendar});
  final GoogleCalendar googleCalendar;

  ///
  /// APIでGoogleカレンダーの情報を取得する
  ///
  Future<List<CalendarItem>> fetchGoogleCalendarEvent() async {
    final googleCalendarItem = await googleCalendar.fetchCalendarEvent();
    List<CalendarItem> galsCalendarItemList = [];
    googleCalendarItem?.items?.forEach((response) {
      final startDate = response.start?.date;
      final endDate = response.end?.date;
      if (startDate != null && endDate != null) {
        final differenceDate = endDate.difference(startDate);
        if ((differenceDate.inDays) >= 2) {
          for (var i = 0; i < differenceDate.inDays; i++) {
            final date = startDate.add(Duration(days: i));
            galsCalendarItemList.add(
              CalendarItem(
                title: response.summary ?? '',
                eventStart: startDate.toUtc(),
                eventEnd: endDate.toUtc(),
                link: response.htmlLink ?? '',
                updated: response.updated ?? DateTime.now(),
                description: response.description ?? '',
                calendarEventDate: replaceDate(
                  date,
                  response.summary ?? '',
                ),
              ),
            );
          }
        } else {
          galsCalendarItemList.add(
            CalendarItem(
              title: response.summary ?? '',
              eventStart: startDate.toUtc(),
              eventEnd: endDate.toUtc(),
              link: response.htmlLink ?? '',
              updated: response.updated ?? DateTime.now(),
              description: response.description ?? '',
              calendarEventDate: replaceDate(
                startDate,
                response.summary ?? '',
              ),
            ),
          );
        }
      }
    });
    return galsCalendarItemList;
  }

  Map<DateTime, List> replaceDate(
    DateTime startDate,
    String title,
  ) =>
      {
        startDate: [title]
      };
}

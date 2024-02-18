import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:gals_app/api/model/google_calendar_response.dart';

part 'google_calendar.g.dart';

///
/// Google_Calender_API
///
@RestApi()
abstract class GoogleCalendar {
  factory GoogleCalendar(Dio dio) = _GoogleCalendar;

  /// GALSカレンダー取得
  @GET(
      'https://www.googleapis.com/calendar/v3/calendars/c_n953dmf53qimt5ea8bl2s59r78%40group.calendar.google.com/events?maxResults=2500&key=APIKEY')
  Future<GoogleCalendarResponseEntity?> fetchCalendarEvent();
}

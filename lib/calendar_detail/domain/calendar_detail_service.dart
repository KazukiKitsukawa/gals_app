import 'package:gals_app/calendar_detail/domain/state/viewitem/calendar_detail_view_item.dart';
import 'package:gals_app/calendar_detail/infrastructure/calendar_detail_repository.dart';
import 'package:gals_app/calender/state/viewitem/calendar_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final calendarDetailService = Provider.autoDispose(
  (ref) => CalendarDetailService(
    calendarDetailRepository: ref.read(calendarDetailRepository),
  ),
);

class CalendarDetailService {
  CalendarDetailService(
      {required CalendarDetailRepository calendarDetailRepository})
      : _calendarDetailRepository = calendarDetailRepository;

  final CalendarDetailRepository _calendarDetailRepository;

  CalendarDetailViewItem jsonDecodeViewItem(CalendarItem calendarItem) {
    final CalendarDetailViewItem calendarViewItem = CalendarDetailViewItem(
        title: calendarItem.title,
        updated: calendarItem.updated,
        link: _calendarDetailRepository.getUrl(calendarItem.description),
        eventStart: calendarItem.eventStart,
        description: calendarItem.description.replaceAll('\n', '<br>'),
        noHtmlDescription:
            _calendarDetailRepository.htmlTagReplace(calendarItem.description));
    return calendarViewItem;
  }
}

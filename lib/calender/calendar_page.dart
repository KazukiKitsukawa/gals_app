import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gals_app/calendar_detail/calendar_detail_page.dart';
import 'package:gals_app/calender/calendar_notifier.dart';
import 'package:gals_app/calender/state/viewitem/calendar_item.dart';
import 'package:gals_app/component/base_main_page.dart';
import 'package:gals_app/util/color.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends HookConsumerWidget {
  const CalendarPage({Key? key}) : super(key: key);
  static const String name = 'calendarPage';
  static const String path = '/calendarPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendar = ref.watch(calenderNotifier.notifier);
    final calendarItem =
        ref.watch(calenderNotifier.select((value) => value.calenderItem));
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        calendar.init();
      });
      return null;
    }, []);
    return BaseMainPage(
      showAppbar: false,
      title: '',
      isSafeArea: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SizedBox(
          child: calendarItem.when(
              data: (data) {
                return CalendarBody(
                  calendarItem: data,
                );
              },
              error: (error, _) => const SizedBox.shrink(),
              loading: () => const Center(child: CircularProgressIndicator())),
        ),
      ),
    );
  }
}

class CalendarBody extends StatefulWidget {
  const CalendarBody({
    super.key,
    required this.calendarItem,
  });
  final List<CalendarItem> calendarItem;

  @override
  State<CalendarBody> createState() => _CalendarBodyState();
}

class _CalendarBodyState extends State<CalendarBody> {
  /// 選択した日付
  DateTime? _selectedDay;
  final Map<DateTime, List> _eventList = {};

  /// 押下した日付
  DateTime _focusedDay = DateTime.now();

  int getHashCode(DateTime key) {
    return key.day * 1000000 + key.month * 10000 + key.year;
  }

  @override
  void initState() {
    _selectedDay = _focusedDay;
    for (var element in widget.calendarItem) {
      _eventList.addAll(element.calendarEventDate);
    }
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final events = LinkedHashMap<DateTime, List>(
      equals: isSameDay,
      hashCode: getHashCode,
    )..addAll(_eventList);

    List getEvent(DateTime day) {
      return events[day] ?? [];
    }

    Color headerTextColor(DateTime day) {
      if (day.weekday == DateTime.sunday) {
        return GalsColor.calendarMondayColor;
      }
      if (day.weekday == DateTime.saturday) {
        return GalsColor.backgroundColor;
      }
      return GalsColor.blackColor;
    }

    return Column(
      children: [
        TableCalendar(
          firstDay: DateTime.utc(2021, 1, 1),
          lastDay: DateTime.utc(2026, 12, 31),
          pageJumpingEnabled: true,
          focusedDay: _focusedDay,
          locale: 'ja_JP',
          daysOfWeekHeight: 24,
          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          eventLoader: getEvent,
          rowHeight: 60,
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              if (!isSameDay(_selectedDay, selectedDay)) {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              }
              getEvent(selectedDay);
            });
          },
          calendarStyle: const CalendarStyle(
            isTodayHighlighted: false,
            todayDecoration: BoxDecoration(
              color: Color(0xB074b3d2),
              shape: BoxShape.circle,
            ),
            selectedDecoration: BoxDecoration(
              color: Color(0xFF74b3d2),
              shape: BoxShape.circle,
            ),
            markerDecoration: BoxDecoration(
              color: Color(0xff749ed2),
              shape: BoxShape.circle,
            ),
          ),
          headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
              leftChevronVisible: false,
              rightChevronVisible: false),
          onPageChanged: (focusedDay) {
            _focusedDay = focusedDay;
          },
          sixWeekMonthsEnforced: false,
          calendarBuilders: CalendarBuilders(
            dowBuilder: (context, day) {
              const locale = 'ja_JP';
              final dowText = const DaysOfWeekStyle()
                      .dowTextFormatter
                      ?.call(day, 'ja_JP') ??
                  DateFormat.E(locale).format(day);
              return Center(
                child: Text(
                  dowText,
                  style: TextStyle(
                    color: headerTextColor(day),
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: getEvent(_selectedDay!)
                .map((e) => Container(
                      decoration: const BoxDecoration(
                          color: Color(0x6974b3d2),
                          border:
                              Border(bottom: BorderSide(color: Colors.white))),
                      child: ListTile(
                        title: Text(
                          e.toString(),
                        ),
                        onTap: () {
                          final calendarListItem = widget.calendarItem
                              .firstWhere(
                                  (element) => element.title == e.toString());
                          context.pushNamed(CalendarDetailPage.name,
                              queryParams: {
                                'calendarItem':
                                    jsonEncode(calendarListItem.toJson())
                              });
                        },
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}

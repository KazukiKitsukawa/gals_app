import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gals_app/calendar_detail/calendar_detail_page.dart';
import 'package:gals_app/calender/calendar_notifier.dart';
import 'package:gals_app/calender/state/viewitem/calendar_item.dart';
import 'package:gals_app/component/base_main_page.dart';
import 'package:gals_app/resources/assets/images.dart';
import 'package:gals_app/util/color.dart';
import 'package:gals_app/util/font.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulHookConsumerWidget {
  const CalendarPage({Key? key}) : super(key: key);
  static const String name = 'calendarPage';
  static const String path = '/calendarPage';

  @override
  ConsumerState<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends ConsumerState<CalendarPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(calenderNotifier.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    final calendarItem = ref.watch(calenderNotifier.select((value) => value.calenderItem));
    return BaseMainPage(
      showAppbar: false,
      isSafeArea: true,
      child: SizedBox(
        child: calendarItem.when(
          data: (data) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CalendarBody(
                calendarItem: data,
              ),
            );
          },
          error: (error, _) {
            return Container(
              alignment: Alignment.center,
              color: GalsColor.whiteColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: Image(
                      image: GalsAppAssetImage.splashPicture,
                      color: GalsColor.backgroundColor,
                    ),
                  ),
                  Text(
                    'エラーが発生しました。再度読み込んでください。',
                    style: UseGoogleFont.zenKaku.style.copyWith(fontSize: size16.sp),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: GalsColor.backgroundColor,
                        textStyle: TextStyle(
                          color: GalsColor.whiteColor,
                        ),
                      ),
                      onPressed: () {
                        ref.watch(calenderNotifier.notifier).init();
                      },
                      child: Text(
                        '再読み込み',
                        style: UseGoogleFont.zenKaku.style
                            .copyWith(color: GalsColor.whiteColor, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          loading: () => Center(
            child: Image(
              color: GalsColor.backgroundColor,
              image: GalsAppAssetImage.gImage,
            ),
          ),
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
          daysOfWeekHeight: 24.sp,
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
            rightChevronVisible: false,
          ),
          onPageChanged: (focusedDay) {
            _focusedDay = focusedDay;
          },
          sixWeekMonthsEnforced: false,
          calendarBuilders: CalendarBuilders(
            dowBuilder: (context, day) {
              const locale = 'ja_JP';
              final dowText =
                  const DaysOfWeekStyle().dowTextFormatter?.call(day, 'ja_JP') ?? DateFormat.E(locale).format(day);
              return Center(
                child: Text(
                  dowText,
                  style: UseGoogleFont.zenKaku.style.copyWith(
                    fontSize: size14.sp,
                    color: headerTextColor(day),
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: getEvent(_selectedDay!)
                .map(
                  (e) => Container(
                    decoration: BoxDecoration(
                      color: const Color(0x6974b3d2),
                      border: Border(
                        bottom: BorderSide(color: GalsColor.whiteColor),
                      ),
                    ),
                    child: ListTile(
                      title: Text(
                        e.toString(),
                        style: UseGoogleFont.zenKaku.style.copyWith(fontSize: size14),
                      ),
                      onTap: () {
                        final calendarListItem =
                            widget.calendarItem.firstWhere((element) => element.title == e.toString());
                        context.pushNamed(CalendarDetailPage.name,
                            queryParams: {'calendarItem': jsonEncode(calendarListItem.toJson())});
                      },
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

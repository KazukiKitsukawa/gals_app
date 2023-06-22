import 'package:flutter/material.dart';
import 'package:gals_app/calender/calendar_page.dart';
import 'package:gals_app/mainpage/main_page.dart';
import 'package:gals_app/news/news_page.dart';
import 'package:gals_app/setting/setting.dart';
import 'package:gals_app/util/color.dart';

import 'navigation_icon.dart';

class GalsNavigationBar extends StatefulWidget {
  const GalsNavigationBar({Key? key, required this.child}) : super(key: key);

  final Widget child;
  @override
  State<GalsNavigationBar> createState() => _GalsNavigationBarState();
}

class _GalsNavigationBarState extends State<GalsNavigationBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: GalsColor.backgroundColor.withOpacity(0.5),
            borderRadius: const BorderRadius.all(Radius.circular(24)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavigationIcon(
                name: NavigationItem.home.name,
                child: NavigationItem.home.icon,
              ),
              NavigationIcon(
                name: NavigationItem.top.name,
                child: NavigationItem.top.icon,
              ),
              NavigationIcon(
                name: NavigationItem.setting.name,
                child: NavigationItem.setting.icon,
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: widget.child,
    );
  }
}

enum NavigationItem {
  news(
    navigationIndex: 1,
    text: 'news',
    icon: Icon(
      Icons.newspaper_outlined,
      size: 32,
    ),
    path: GalsNewsPage.path,
    name: GalsNewsPage.name,
  ),
  home(
    navigationIndex: 2,
    text: 'ホーム',
    icon: Icon(
      Icons.home,
      size: 32,
    ),
    path: MainPage.path,
    name: MainPage.name,
  ),
  top(
    navigationIndex: 3,
    text: 'Calendar',
    icon: Icon(
      Icons.calendar_month,
      size: 32,
    ),
    path: CalendarPage.path,
    name: CalendarPage.name,
  ),
  setting(
    navigationIndex: 4,
    text: 'setting',
    icon: Icon(
      Icons.settings,
      size: 32,
    ),
    path: Setting.path,
    name: Setting.name,
  );

  const NavigationItem({
    required this.navigationIndex,
    required this.text,
    required this.icon,
    required this.path,
    required this.name,
  });
  final int navigationIndex;
  final String text;
  final Icon icon;
  final String path;
  final String name;
}

import 'package:flutter/material.dart';
import 'package:gals_app/calendar_detail/calendar_detail_page.dart';
import 'package:gals_app/calender/calendar_page.dart';
import 'package:gals_app/mainpage/main_page.dart';
import 'package:gals_app/navigation/gals_navigation_bar.dart';
import 'package:gals_app/news/news_page.dart';
import 'package:gals_app/setting/setting.dart';
import 'package:gals_app/splash/page/splash_page.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final router = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  initialLocation: SplashPage.path,
  routes: [
    /// タブがない場合
    GoRoute(
      name: SplashPage.name,
      path: SplashPage.path,
      builder: (context, state) => const SplashPage(),
    ),
    // タブありの場合
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return GalsNavigationBar(
          child: child,
        );
      },
      routes: [
        GoRoute(
          name: MainPage.name,
          path: MainPage.path,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const MainPage(),
          ),
        ),
        GoRoute(
          name: CalendarPage.name,
          path: CalendarPage.path,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const CalendarPage(),
          ),
        ),
        GoRoute(
          name: GalsNewsPage.name,
          path: GalsNewsPage.path,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const GalsNewsPage(),
          ),
        ),
        GoRoute(
          name: Setting.name,
          path: Setting.path,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const Setting(),
          ),
        ),
        GoRoute(
          name: CalendarDetailPage.name,
          path: CalendarDetailPage.path,
          pageBuilder: (context, state) {
            final String calendarListItem =
                state.queryParams['calendarItem'] ?? '';
            return MaterialPage(
              key: state.pageKey,
              child: CalendarDetailPage(
                calenderItem: calendarListItem,
              ),
            );
          },
        ),
      ],
    ),
  ],
);

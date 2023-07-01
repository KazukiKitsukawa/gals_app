import 'package:flutter/material.dart';
import 'package:gals_app/calendar_detail/calendar_detail_page.dart';
import 'package:gals_app/calender/calendar_page.dart';
import 'package:gals_app/mainpage/main_page.dart';
import 'package:gals_app/mainpage/state/viewitem/gals_member_info.dart';
import 'package:gals_app/member_detail/member_detail_page.dart';
import 'package:gals_app/navigation/gals_navigation_bar.dart';
import 'package:gals_app/setting/setting.dart';
import 'package:gals_app/setting/setting_page/app_version.dart';
import 'package:gals_app/setting/setting_page/privacy_policy.dart';
import 'package:gals_app/splash/page/splash_page.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

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
            routes: [
              GoRoute(
                name: MemberDetailPage.name,
                path: MemberDetailPage.path,
                parentNavigatorKey: _rootNavigatorKey,
                pageBuilder: (context, state) {
                  final GalsMemberInfo memberInfo = state.extra as GalsMemberInfo;
                  return MaterialPage(
                    fullscreenDialog: true,
                    key: state.pageKey,
                    child: MemberDetailPage(
                      memberInfo: memberInfo,
                    ),
                  );
                },
              ),
            ]),
        GoRoute(
            name: CalendarPage.name,
            path: CalendarPage.path,
            pageBuilder: (context, state) => NoTransitionPage(
                  key: state.pageKey,
                  child: const CalendarPage(),
                ),
            routes: [
              GoRoute(
                name: CalendarDetailPage.name,
                path: CalendarDetailPage.path,
                pageBuilder: (context, state) {
                  final String calendarListItem = state.queryParams['calendarItem'] ?? '';
                  return MaterialPage(
                    key: state.pageKey,
                    child: CalendarDetailPage(
                      calenderItem: calendarListItem,
                    ),
                  );
                },
              ),
            ]),
        GoRoute(
          name: Setting.name,
          path: Setting.path,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const Setting(),
          ),
          routes: [
            GoRoute(
              name: PrivacyPolicyPage.name,
              path: PrivacyPolicyPage.path,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const PrivacyPolicyPage(),
              ),
            ),
            GoRoute(
              name: AppVersion.name,
              path: AppVersion.path,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const AppVersion(),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);

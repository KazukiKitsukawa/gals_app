import 'package:flutter/material.dart';
import 'package:gals_app/calendar_detail/calendar_detail_page.dart';
import 'package:gals_app/calender/calendar_page.dart';
import 'package:gals_app/mainpage/main_page.dart';
import 'package:gals_app/mainpage/state/viewitem/gals_member_info.dart';
import 'package:gals_app/member_detail/member_detail_page.dart';
import 'package:gals_app/navigation/gals_navigation_bar.dart';
import 'package:gals_app/set_list/presentation/setlist_page.dart';
import 'package:gals_app/setting/setting.dart';
import 'package:gals_app/setting/setting_page/app_version.dart';
import 'package:gals_app/setting/setting_page/license_page.dart';
import 'package:gals_app/setting/setting_page/privacy_policy.dart';
import 'package:gals_app/splash/page/splash_page.dart';
import 'package:gals_app/thankyou_page/thankyou_gals_page.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _sectionANavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'sectionANav');

final goRouterProvider = Provider((ref) {
  return GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    initialLocation: ThankYouGalsPage.path,
    routes: [
      GoRoute(
        name: SplashPage.name,
        path: SplashPage.path,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: SplashPage(),
          );
        },
      ),
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: _rootNavigatorKey,
        builder: (BuildContext context, GoRouterState state, StatefulNavigationShell navigationShell) {
          return GalsNavigationBar(navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _sectionANavigatorKey,
            routes: [
              GoRoute(
                  path: ThankYouGalsPage.path,
                  name: ThankYouGalsPage.name,
                  builder: (context, state) {
                    return const ThankYouGalsPage();
                  }),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: MainPage.name,
                path: MainPage.path,
                pageBuilder: (context, state) => const MaterialPage(child: MainPage()),
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
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: CalendarPage.name,
                path: CalendarPage.path,
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: const CalendarPage(),
                ),
                routes: [
                  GoRoute(
                    name: CalendarDetailPage.name,
                    path: CalendarDetailPage.path,
                    pageBuilder: (context, state) {
                      final String calendarListItem = state.queryParameters['calendarItem'] ?? '';
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
          ),
          StatefulShellBranch(
            routes: [
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
                  GoRoute(
                    name: CustomLicensePage.name,
                    path: CustomLicensePage.path,
                    pageBuilder: (context, state) => NoTransitionPage(
                      key: state.pageKey,
                      child: const CustomLicensePage(),
                    ),
                  ),
                  GoRoute(
                    name: SetListPage.name,
                    path: SetListPage.path,
                    pageBuilder: (context, state) => NoTransitionPage(
                      key: state.pageKey,
                      child: const SetListPage(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
});

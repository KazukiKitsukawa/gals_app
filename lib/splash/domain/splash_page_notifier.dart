import 'package:flutter/cupertino.dart';
import 'package:gals_app/splash/domain/state/splash_page_state.dart';
import 'package:gals_app/thankyou_page/thankyou_gals_page.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final splashPageNotifier = StateNotifierProvider.autoDispose<SplashPageNotifier, SplashPageState>((ref) {
  return SplashPageNotifier();
});

class SplashPageNotifier extends StateNotifier<SplashPageState> {
  SplashPageNotifier() : super(const SplashPageState());

  /// 起動時に次ページに遷移する動き
  Future<void> applicationStartCheck() async {
    await Future.delayed(const Duration(seconds: 1));
    state = state.copyWith(initialCheck: true);
  }

  Future<void> goNextPage(BuildContext context) async {
    context.go(ThankYouGalsPage.path);
  }
}

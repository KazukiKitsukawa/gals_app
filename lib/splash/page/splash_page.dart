import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gals_app/resources/assets/images.dart';
import 'package:gals_app/splash/domain/splash_page_notifier.dart';
import 'package:gals_app/splash/domain/state/splash_page_state.dart';
import 'package:gals_app/util/color.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const path = '/splashPage';
  static const name = 'splashPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SplashPageNotifier splashPage = ref.watch(splashPageNotifier.notifier);

    ref.listen<SplashPageState>(splashPageNotifier, (previous, next) async {
      if (next.initialCheck) {
        await splashPage.goNextPage(context);
        return;
      }
    });

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await splashPage.applicationStartCheck();
      });
      return null;
    }, []);

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: GalsColor.backgroundColor,
      child: const Center(
        child: Image(
          image: GalsAppAssetImage.splashPicture,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gals_app/component/base_main_page.dart';
import 'package:gals_app/resources/assets/images.dart';
import 'package:gals_app/setting/setting_notifier.dart';
import 'package:gals_app/util/color.dart';
import 'package:gals_app/util/font.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppVersion extends ConsumerWidget {
  const AppVersion({Key? key}) : super(key: key);

  static const String name = 'appVersion';
  static const String path = 'appVersion';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appVer = ref.watch(settingNotifier.select((value) => value.appVersion));
    return BaseMainPage(
      showAppbar: true,
      onPop: true,
      title: 'アプリバージョン',
      isSafeArea: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
            child: Center(
              child: Image(
                color: GalsColor.backgroundColor,
                image: GalsAppAssetImage.splashPicture,
              ),
            ),
          ),
          appVer.when(
              data: (data) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Text(
                        'アプリ名：${data.appName}',
                        style: UseGoogleFont.zenKaku.style.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: size24,
                          color: GalsColor.backgroundColor,
                        ),
                      ),
                    ),
                    Text(
                      'バージョン：${data.version}',
                      style: UseGoogleFont.zenKaku.style.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: size24,
                        color: GalsColor.backgroundColor,
                      ),
                    ),
                  ],
                );
              },
              error: (_, __) => const SizedBox.shrink(),
              loading: () => const CircularProgressIndicator()),
        ],
      ),
    );
  }
}

import 'package:gals_app/setting/setting_state.dart';
import 'package:gals_app/setting/viewitem/app_version_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

final settingNotifier =
    StateNotifierProvider.autoDispose<SettingNotifier, SettingState>((ref) => SettingNotifier()..fetchAppVersion());

class SettingNotifier extends StateNotifier<SettingState> {
  SettingNotifier() : super(const SettingState());

  Future<void> fetchAppVersion() async {
    final package = await PackageInfo.fromPlatform();
    state = state.copyWith(
      appVersion: AsyncValue.data(
        AppVersionItem(
          appName: package.appName,
          packageName: package.packageName,
          version: package.version,
          buildNumber: package.buildNumber,
        ),
      ),
    );
  }
}

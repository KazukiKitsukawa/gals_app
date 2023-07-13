import 'package:flutter/material.dart';
import 'package:gals_app/component/base_main_page.dart';
import 'package:gals_app/component/setting_list.dart';
import 'package:gals_app/resources/assets/images.dart';
import 'package:gals_app/set_list/presentation/setlist_page.dart';
import 'package:gals_app/setting/setting_page/app_version.dart';
import 'package:gals_app/setting/setting_page/license_page.dart';
import 'package:gals_app/setting/setting_page/privacy_policy.dart';
import 'package:gals_app/util/color.dart';
import 'package:gals_app/util/font.dart';
import 'package:url_launcher/url_launcher.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  static const path = '/setting';
  static const name = 'setting';

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool pushNotification = false;
  @override
  Widget build(BuildContext context) {
    return BaseMainPage(
      showAppbar: true,
      title: '設定',
      isSafeArea: true,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SettingListTile(
                name: AppVersion.name,
                settingText: 'アプリバージョン',
              ),
              Divider(
                color: GalsColor.backgroundColor,
              ),
              const SettingListTile(
                name: PrivacyPolicyPage.name,
                settingText: 'プライバシーポリシー',
              ),
              Divider(
                color: GalsColor.backgroundColor,
              ),
              const SettingListTile(
                name: CustomLicensePage.name,
                settingText: 'ライセンスページ',
              ),
              Divider(
                color: GalsColor.backgroundColor,
              ),
              ListTile(
                minVerticalPadding: 16,
                title: Wrap(
                  children: [
                    Text(
                      '公式Twitter',
                      style: UseGoogleFont.zenKaku.style.copyWith(
                        color: GalsColor.blackColor,
                        fontSize: size16,
                      ),
                    ),
                  ],
                ),
                trailing: Wrap(
                  spacing: 32,
                  children: [
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: GalsColor.blackColor,
                    ),
                  ],
                ),
                onTap: () {
                  launchUrl(
                    Uri.parse('https://twitter.com/gals__official'),
                  );
                },
              ),
              Divider(
                color: GalsColor.backgroundColor,
              ),
              const SettingListTile(
                name: SetListPage.name,
                settingText: 'セットリスト',
              ),
              Divider(
                color: GalsColor.backgroundColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Center(
                  child: Image(
                    image: GalsAppAssetImage.splashPicture,
                    color: GalsColor.backgroundColor,
                  ),
                ),
              ),
              Text(
                'このアプリはGALS非公式アプリになります。',
                style: UseGoogleFont.zenKaku.style.copyWith(fontSize: size14, color: GalsColor.backgroundColor),
              ),
              Text(
                '非公式の為、公式にご連絡はお控えください。',
                style: UseGoogleFont.zenKaku.style.copyWith(fontSize: size14, color: GalsColor.backgroundColor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    '© FiZZ 2023 All rights reserved.',
                    style: UseGoogleFont.zenKaku.style.copyWith(
                      fontSize: size14,
                      color: GalsColor.backgroundColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

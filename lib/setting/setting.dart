import 'package:flutter/material.dart';
import 'package:gals_app/component/base_main_page.dart';
import 'package:gals_app/component/large_text.dart';
import 'package:gals_app/util/color.dart';

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
      child: Container(
        color: GalsColor.whiteColor,
        child: Column(
          children: [
            SwitchListTile(
              title: LargeText(
                text: 'プッシュ通知',
                textColor: GalsColor.backgroundColor,
              ),
              value: pushNotification,
              onChanged: (bool value) {
                setState(
                  () {
                    pushNotification = value;
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

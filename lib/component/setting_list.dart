import 'package:flutter/material.dart';
import 'package:gals_app/util/color.dart';
import 'package:gals_app/util/font.dart';
import 'package:go_router/go_router.dart';

class SettingListTile extends StatelessWidget {
  const SettingListTile({
    Key? key,
    required this.name,
    required this.settingText,
  }) : super(key: key);

  final String name;

  final String settingText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Wrap(
        children: [
          Text(
            settingText,
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
        context.pushNamed(name);
      },
    );
  }
}

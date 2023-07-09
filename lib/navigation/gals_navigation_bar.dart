import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gals_app/calender/calendar_page.dart';
import 'package:gals_app/mainpage/main_page.dart';
import 'package:gals_app/resources/assets/images.dart';
import 'package:gals_app/setting/setting.dart';
import 'package:gals_app/thankyou_page/thankyou_gals_page.dart';
import 'package:gals_app/util/color.dart';
import 'package:gals_app/util/font.dart';
import 'package:gals_app/navigation/navigation_icon.dart';

class GalsNavigationBar extends StatefulWidget {
  const GalsNavigationBar({Key? key, required this.child}) : super(key: key);

  final Widget child;
  @override
  State<GalsNavigationBar> createState() => _GalsNavigationBarState();
}

class _GalsNavigationBarState extends State<GalsNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GalsColor.whiteColor,
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: GalsColor.backgroundColor.withOpacity(0.5),
            borderRadius: const BorderRadius.all(Radius.circular(24)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavigationIcon(
                name: NavigationItem.thankYouForGALS.name,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: NavigationItem.thankYouForGALS.icon,
                    ),
                    Text(
                      NavigationItem.thankYouForGALS.text,
                      style: UseGoogleFont.zenKaku.style.copyWith(
                        fontSize: size12,
                      ),
                    )
                  ],
                ),
              ),
              NavigationIcon(
                name: NavigationItem.home.name,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: NavigationItem.home.icon,
                    ),
                    Text(
                      NavigationItem.home.text,
                      style: UseGoogleFont.zenKaku.style.copyWith(
                        fontSize: size12,
                      ),
                    )
                  ],
                ),
              ),
              NavigationIcon(
                name: NavigationItem.top.name,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: NavigationItem.top.icon,
                    ),
                    Text(
                      NavigationItem.top.text,
                      style: UseGoogleFont.zenKaku.style.copyWith(
                        fontSize: size12,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              NavigationIcon(
                name: NavigationItem.setting.name,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: NavigationItem.setting.icon,
                    ),
                    Text(
                      NavigationItem.setting.text,
                      style: UseGoogleFont.zenKaku.style.copyWith(
                        fontSize: size12,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: widget.child,
    );
  }
}

enum NavigationItem {
  thankYouForGALS(
    navigationIndex: 0,
    text: 'トップページ',
    icon: Image(
      width: 60,
      image: GalsAppAssetImage.splashPicture,
      color: Colors.black87,
    ),
    path: ThankYouGalsPage.path,
    name: ThankYouGalsPage.name,
  ),
  home(
    navigationIndex: 1,
    text: 'ホーム',
    icon: Icon(
      FontAwesomeIcons.house,
      size: 28,
      color: Colors.black87,
    ),
    path: MainPage.path,
    name: MainPage.name,
  ),
  top(
    navigationIndex: 2,
    text: 'カレンダー',
    icon: Icon(
      FontAwesomeIcons.calendar,
      color: Colors.black87,
      size: 28,
    ),
    path: CalendarPage.path,
    name: CalendarPage.name,
  ),
  setting(
    navigationIndex: 3,
    text: '設定',
    icon: Icon(
      FontAwesomeIcons.bars,
      color: Colors.black87,
      size: 28,
    ),
    path: Setting.path,
    name: Setting.name,
  );

  const NavigationItem({
    required this.navigationIndex,
    required this.text,
    required this.icon,
    required this.path,
    required this.name,
  });
  final int navigationIndex;
  final String text;
  final Widget icon;
  final String path;
  final String name;
}

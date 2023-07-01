import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gals_app/util/color.dart';
import 'package:gals_app/util/font.dart';

class BaseMainPage extends StatelessWidget {
  const BaseMainPage({
    Key? key,
    required this.showAppbar,
    required this.child,
    this.title = '',
    this.onWillPop,
    this.onPop = false,
    required this.isSafeArea,
  }) : super(key: key);

  final bool showAppbar;
  final String? title;
  final WillPopCallback? onWillPop;
  final bool isSafeArea;
  final Widget child;
  final bool onPop;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(systemNavigationBarColor: GalsColor.whiteColor),
      child: Scaffold(
        backgroundColor: GalsColor.whiteColor,
        resizeToAvoidBottomInset: true,
        appBar: showAppbar
            ? AppBar(
                backgroundColor: GalsColor.backgroundColor,
                centerTitle: true,
                title: Text(
                  title ?? '',
                  style: UseGoogleFont.zenKaku.style.copyWith(color: GalsColor.whiteColor, fontWeight: FontWeight.w700),
                ),
                automaticallyImplyLeading: false,
                elevation: 0,
                leading: onPop
                    ? IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: GalsColor.whiteColor,
                        ),
                        onPressed: () => Navigator.pop(context),
                      )
                    : const SizedBox.shrink(),
              )
            : null,
        body: WillPopScope(
          onWillPop: onWillPop,
          child: isSafeArea ? SafeArea(child: child) : child,
        ),
      ),
    );
  }
}

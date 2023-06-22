import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gals_app/component/large_text.dart';
import 'package:gals_app/util/color.dart';

class BaseMainPage extends StatelessWidget {
  const BaseMainPage(
      {Key? key,
      required this.showAppbar,
      required this.child,
      this.title = '',
      this.onWillPop,
      required this.isSafeArea})
      : super(key: key);

  final bool showAppbar;
  final String? title;
  final WillPopCallback? onWillPop;
  final bool isSafeArea;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark
          .copyWith(systemNavigationBarColor: GalsColor.whiteColor),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: showAppbar
            ? AppBar(
                backgroundColor: GalsColor.backgroundColor,
                centerTitle: true,
                title: LargeText(
                  text: title ?? '',
                  isGoogleFont: true,
                ),
                automaticallyImplyLeading: false,
                elevation: 0,
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

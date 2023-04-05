import 'package:flutter/material.dart';
import 'package:gals_app/component/base_main_page.dart';

class GalsNewsPage extends StatelessWidget {
  const GalsNewsPage({Key? key}) : super(key: key);

  static const path = '/newsPage';
  static const name = 'newsPage';

  @override
  Widget build(BuildContext context) {
    return const BaseMainPage(
      showAppbar: true,
      isSafeArea: true,
      child: Placeholder(),
    );
  }
}

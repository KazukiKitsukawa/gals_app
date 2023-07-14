import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NavigationIcon extends StatelessWidget {
  const NavigationIcon({
    super.key,
    required int index,
    required Widget child,
    required StatefulNavigationShell statefulNavigationShell,
  })  : _child = child,
        _index = index,
        _statefulNavigationShell = statefulNavigationShell;

  final int _index;
  final Widget _child;
  final StatefulNavigationShell _statefulNavigationShell;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          _statefulNavigationShell.goBranch(_index, initialLocation: _index == _statefulNavigationShell.currentIndex),
      child: InkWell(
        child: SizedBox(
          width: 70.w,
          child: _child,
        ),
      ),
    );
  }
}

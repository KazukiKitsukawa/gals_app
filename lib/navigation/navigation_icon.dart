import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationIcon extends StatelessWidget {
  const NavigationIcon({
    super.key,
    required this.name,
    required this.child,
  });

  final String name;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        height: 36,
        width: 36,
        child: GestureDetector(
          onTap: () => context.goNamed(name),
          child: child,
        ),
      ),
    );
  }
}

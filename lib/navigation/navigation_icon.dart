import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationIcon extends StatelessWidget {
  const NavigationIcon({
    super.key,
    required String name,
    required Widget child,
  })  : _child = child,
        _name = name;

  final String _name;
  final Widget _child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        width: 70,
        child: GestureDetector(
          onTap: () => context.goNamed(_name),
          child: _child,
        ),
      ),
    );
  }
}

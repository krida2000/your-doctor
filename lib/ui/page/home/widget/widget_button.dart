import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  const WidgetButton({super.key, required this.child, this.onPressed});

  final Widget child;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: onPressed != null ? SystemMouseCursors.click : MouseCursor.defer,
      child: GestureDetector(
        onTap: onPressed,
        child: child,
      ),
    );
  }
}

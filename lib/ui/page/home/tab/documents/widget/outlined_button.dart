import 'package:flutter/material.dart';

class PrimaryOutlinedButton extends StatelessWidget {
  const PrimaryOutlinedButton({
    super.key,
    this.onPressed,
    required this.child,
    this.selected = false,
  });

  final void Function()? onPressed;

  final Widget child;

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: child,
    );
  }
}

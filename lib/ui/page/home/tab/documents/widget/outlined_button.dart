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
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(1, 40),
        side: const BorderSide(color: Color(0xFFDDD6FE), width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        backgroundColor: selected ? const Color(0xFFDDD6FE) : null,
        foregroundColor:
            selected ? const Color(0xFF733AED) : const Color(0xFFDDD6FE),
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      child: Center(child: child),
    );
  }
}

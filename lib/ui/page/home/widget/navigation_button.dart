import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.selected = false,
  });

  final Widget icon;

  final void Function()? onPressed;

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      height: 48,
      child: Stack(
        fit: StackFit.loose,
        children: [
          Container(
            decoration: BoxDecoration(
              color: selected ? const Color(0xFF481E92) : Colors.transparent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: onPressed,
                  child: IconTheme(
                    data: IconThemeData(
                      color: selected ? Colors.white : const Color(0xFFAA8BFA),
                    ),
                    child: icon,
                  ),
                ),
              ),
            ),
          ),
          if (selected)
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 16,
                height: 4,
                decoration: const BoxDecoration(
                  color: Color(0xFFAA8BFA),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

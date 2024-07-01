import 'package:flutter/material.dart';

import '/theme.dart';

class TabAppBar extends StatelessWidget {
  const TabAppBar({
    super.key,
    required this.title,
    this.trailing,
    this.background,
  });

  final String title;

  final Widget? trailing;

  final DecorationImage? background;

  @override
  Widget build(BuildContext context) {
    final Style style = Theme.of(context).extension<Style>()!;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        image: background,
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 34),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                title,
                style: style.fonts.headlineSBoldContracten,
                maxLines: 2,
              ),
            ),
            if (trailing != null) ...[const SizedBox(height: 16), trailing!],
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

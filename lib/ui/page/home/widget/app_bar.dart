import 'package:flutter/material.dart';

import '/theme.dart';

class TabAppBar extends StatelessWidget {
  const TabAppBar({super.key, required this.title, this.trailing});

  final String title;

  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final Style style = Theme.of(context).extension<Style>()!;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
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
            if (trailing != null) ...[const SizedBox(height: 24), trailing!],
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

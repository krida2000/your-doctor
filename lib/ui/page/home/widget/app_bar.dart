import 'package:flutter/material.dart';

class TabAppBar extends StatelessWidget {
  const TabAppBar({super.key, required this.title, this.trailing});

  final String title;

  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
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
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(fontSize: 32),
                maxLines: 2,
              ),
            ),
            if (trailing != null) trailing!,
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class BonusTab extends StatelessWidget {
  const BonusTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: BonusTabController(),
      builder: (c) {
        return const Scaffold(
          body: Center(child: Text('Bonus Tab')),
        );
      },
    );
  }
}

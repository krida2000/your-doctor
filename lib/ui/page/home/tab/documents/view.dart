import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class DocumentsTab extends StatelessWidget {
  const DocumentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: DocumentsTabController(),
      builder: (c) {
        return const Scaffold(
          body: Center(child: Text('Documents Tab')),
        );
      },
    );
  }
}

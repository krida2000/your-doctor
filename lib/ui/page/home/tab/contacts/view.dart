import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class ContactsTab extends StatelessWidget {
  const ContactsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ContactsTabController(),
      builder: (c) {
        return const Scaffold(
          body: Center(child: Text('Contacts Tab')),
        );
      },
    );
  }
}

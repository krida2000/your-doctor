import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
import 'tab/bonus/view.dart';
import 'tab/contacts/view.dart';
import 'tab/documents/view.dart';
import 'widget/navigation_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomePageController(),
      builder: (c) {
        return Scaffold(
          floatingActionButton: Container(
            height: 64,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF311065),
              borderRadius: BorderRadius.circular(21),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x392F3C1A),
                  blurRadius: 22,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Obx(() {
                  return NavigationButton(
                    onPressed: () => c.animateToPage(0),
                    selected: c.page.value == 0,
                    icon: const Icon(Icons.document_scanner_outlined),
                  );
                }),
                Obx(() {
                  return NavigationButton(
                    onPressed: () => c.animateToPage(1),
                    selected: c.page.value == 1,
                    icon: const Icon(Icons.card_giftcard),
                  );
                }),
                Obx(() {
                  return NavigationButton(
                    onPressed: () => c.animateToPage(2),
                    selected: c.page.value == 2,
                    icon: const Icon(Icons.contacts_outlined),
                  );
                }),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: PageView(
            controller: c.pageController,
            onPageChanged: (i) => c.page.value = i,
            children: const [
              DocumentsTab(),
              BonusTab(),
              ContactsTab(),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'tab/bonus/view.dart';
import 'tab/contacts/view.dart';
import 'tab/documents/view.dart';
import 'widget/navigation_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController tabController = TabController(
    length: 3,
    vsync: this,
    animationDuration: const Duration(milliseconds: 200),
  );

  late final RxInt page = tabController.index.obs;

  @override
  void initState() {
    tabController.addListener(() {
      page.value = tabController.index;
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                onPressed: () => tabController.animateTo(0),
                selected: page.value == 0,
                icon: const Icon(Icons.document_scanner_outlined),
              );
            }),
            Obx(() {
              return NavigationButton(
                onPressed: () => tabController.animateTo(1),
                selected: page.value == 1,
                icon: const Icon(Icons.card_giftcard),
              );
            }),
            Obx(() {
              return NavigationButton(
                onPressed: () => tabController.animateTo(2),
                selected: page.value == 2,
                icon: const Icon(Icons.contacts_outlined),
              );
            }),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
      body: TabBarView(
        controller: tabController,
        children: const [
          DocumentsTab(),
          BonusTab(),
          ContactsTab(),
        ],
      ),
    );
  }
}

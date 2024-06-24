import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
import 'tab/bonus/view.dart';
import 'tab/contacts/view.dart';
import 'tab/documents/view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomePageController(),
      builder: (c) {
        return Scaffold(
          floatingActionButton: Container(
              height: 50,
              margin: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () => c.pageController.animateToPage(
                      0,
                      duration: 200.milliseconds,
                      curve: Curves.linear,
                    ),
                    icon: const Icon(Icons.document_scanner_outlined),
                  ),
                  IconButton(
                    onPressed: () => c.pageController.animateToPage(
                      1,
                      duration: 200.milliseconds,
                      curve: Curves.linear,
                    ),
                    icon: const Icon(Icons.card_giftcard),
                  ),
                  IconButton(
                    onPressed: () => c.pageController.animateToPage(
                      2,
                      duration: 200.milliseconds,
                      curve: Curves.linear,
                    ),
                    icon: const Icon(Icons.contacts_outlined),
                  ),
                ],
              )),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: PageView(
            controller: c.pageController,
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

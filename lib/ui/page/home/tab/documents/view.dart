import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/ui/page/home/widget/app_bar.dart';
import 'controller.dart';
import 'widget/document.dart';
import 'widget/outlined_button.dart';

class DocumentsTab extends StatelessWidget {
  const DocumentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: DocumentsTabController(),
      builder: (c) {
        return Container(
          color: const Color(0xFFEFEFF0),
          child: Column(children: [
            TabAppBar(
              title: 'Документи',
              trailing: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: SizedBox(
                  height: 40,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: PrimaryOutlinedButton(
                            onPressed: () {},
                            child: const Text('Документи'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: PrimaryOutlinedButton(
                            onPressed: () {},
                            child: const Text('Посадова інструкція'),
                          ),
                        ),
                        PrimaryOutlinedButton(
                          onPressed: () {},
                          child: const Text('Умови співпраці'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: c.pageController,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      const Text('Трудовий договір'),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '),
                      const SizedBox(
                        height: 24,
                      ),
                      Expanded(
                        child: GridView.builder(
                          itemCount: c.documents.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 24
                          ),
                          itemBuilder: (_, i) {
                            return DocumentView(c.documents[i]);
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ]),
        );
      },
    );
  }
}

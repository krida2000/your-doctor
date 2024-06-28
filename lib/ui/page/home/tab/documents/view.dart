import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/theme.dart';
import '/ui/page/home/widget/app_bar.dart';
import 'controller.dart';
import 'tab/documents.dart';
import 'tab/terms.dart';
import 'widget/outlined_button.dart';

class DocumentsTab extends StatelessWidget {
  const DocumentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final Style style = Theme.of(context).extension<Style>()!;

    return GetBuilder(
      init: DocumentsTabController(),
      builder: (c) {
        return Container(
          color: const Color(0xFFEFEFF0),
          child: Column(children: [
            TabAppBar(
              title: 'Документи',
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: SizedBox(
                  height: 40,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Obx(() {
                      return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8, left: 16),
                            child: PrimaryOutlinedButton(
                              onPressed: () => c.animateToPage(0),
                              selected: c.page.value == 0,
                              child: Text(
                                'Документи',
                                style: style.fonts.textXsSemiBold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: PrimaryOutlinedButton(
                              onPressed: () => c.animateToPage(1),
                              selected: c.page.value == 1,
                              child: Text(
                                'Посадова інструкція',
                                style: style.fonts.textXsSemiBold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: PrimaryOutlinedButton(
                              onPressed: () => c.animateToPage(2),
                              selected: c.page.value == 2,
                              child: Text(
                                'Умови співпраці',
                                style: style.fonts.textXsSemiBold,
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: c.pageController,
                onPageChanged: (i) => c.page.value = i,
                children: [
                  DocumentsView(
                    title: 'Трудовий договір',
                    documents: c.documents,
                  ),
                  DocumentsView(
                    title: 'Посадова інструкція',
                    documents: c.instructions,
                  ),
                  const TermsTab(),
                ],
              ),
            ),
          ]),
        );
      },
    );
  }
}

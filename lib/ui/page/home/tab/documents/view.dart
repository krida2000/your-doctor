import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/theme.dart';
import '/ui/page/home/widget/app_bar.dart';
import 'controller.dart';
import 'tab/documents.dart';
import 'tab/terms.dart';
import 'widget/outlined_button.dart';

class DocumentsTab extends StatefulWidget {
  const DocumentsTab({super.key});

  @override
  State<DocumentsTab> createState() => _DocumentsTabState();
}

class _DocumentsTabState extends State<DocumentsTab>
    with TickerProviderStateMixin {
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
    final Style style = Theme.of(context).extension<Style>()!;

    return GetBuilder(
      init: DocumentsTabController(),
      builder: (c) {
        return Container(
          color: style.colors.primaryBackground,
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
                              onPressed: () => tabController.animateTo(0),
                              selected: page.value == 0,
                              child: Text(
                                'Документи',
                                style: style.fonts.textXsSemiBold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: PrimaryOutlinedButton(
                              onPressed: () => tabController.animateTo(1),
                              selected: page.value == 1,
                              child: Text(
                                'Посадова інструкція',
                                style: style.fonts.textXsSemiBold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: PrimaryOutlinedButton(
                              onPressed: () => tabController.animateTo(2),
                              selected: page.value == 2,
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
              child: TabBarView(
                controller: tabController,
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

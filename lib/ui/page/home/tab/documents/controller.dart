import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/domain/document.dart';

class DocumentsTabController extends GetxController {
  final PageController pageController = PageController();

  final List<Document> documents = [
    Document(
      name: 'Договір 1',
      filesCount: 241,
      size: 24,
      type: DocumentType.document,
    ),
    Document(
      name: 'Договір 2',
      filesCount: 241,
      size: 24,
      type: DocumentType.document,
    ),
    Document(
      name: 'Договір 3',
      filesCount: 241,
      size: 24,
      type: DocumentType.document,
    ),
  ];

  final List<Document> instructions = [
    Document(
      name: 'Договір 1',
      filesCount: 241,
      size: 24,
      type: DocumentType.instruction,
    ),
    Document(
      name: 'Договір 2',
      filesCount: 241,
      size: 24,
      type: DocumentType.instruction,
    ),
    Document(
      name: 'Договір 3',
      filesCount: 241,
      size: 24,
      type: DocumentType.instruction,
    ),
    Document(
      name: 'Договір 4',
      filesCount: 241,
      size: 24,
      type: DocumentType.instruction,
    ),
  ];

  late final RxInt page = RxInt(pageController.initialPage);

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  Future<void> animateToPage(int index) => pageController.animateToPage(
        index,
        duration: 200.milliseconds,
        curve: Curves.linear,
      );
}

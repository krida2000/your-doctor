import 'package:get/get.dart';

import '/domain/document.dart';

class DocumentsTabController extends GetxController {
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
}

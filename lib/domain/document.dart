class Document {
  Document({
    required this.name,
    required this.filesCount,
    required this.size,
    required this.type,
  });

  String name;

  int filesCount;

  int size;

  DocumentType type;
}

enum DocumentType {
  document,
  instruction,
}

import 'package:flutter/material.dart';

import '../widget/document.dart';
import '/domain/document.dart';

class DocumentsView extends StatelessWidget {
  const DocumentsView({
    super.key,
    this.documents = const [],
    this.title,
  });

  final List<Document> documents;

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 24,
          ),
          if (title != null) ...[
            Text(
              title!,
              style: const TextStyle(
                color: Color(0xFF2F3C33),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 12,
            )
          ],
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
            style: TextStyle(color: Color(0xFF647067)),
          ),
          const SizedBox(
            height: 24,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: documents.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 24,
              ),
              itemBuilder: (_, i) => DocumentView(documents[i]),
            ),
          ),
        ],
      ),
    );
  }
}

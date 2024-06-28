import 'package:flutter/material.dart';

import '../widget/document.dart';
import '/domain/document.dart';
import '/theme.dart';

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
    final Style style = Theme.of(context).extension<Style>()!;

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
              style: style.fonts.textSBoldContract,
            ),
            const SizedBox(
              height: 12,
            )
          ],
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
            style: style.fonts.textOnPrimary,
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

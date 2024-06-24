import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '/domain/document.dart';

class DocumentView extends StatelessWidget {
  const DocumentView(this.document, {super.key});

  final Document document;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/icons/document.svg',
                width: 38,
                height: 48,
              ),
              const Icon(
                Icons.more_horiz,
                color: Color(0xFFC5C8C6),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            document.name,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text('${document.filesCount} files'),
              const SizedBox(width: 5),
              Container(
                width: 4,
                height: 4,
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
              ),
              const SizedBox(width: 5),
              Text('${document.size}mb'),
            ],
          ),
          const Spacer(),
          const SizedBox(height: 10),
          Container(
            color: const Color(0xFFECFCCB),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/download.svg',
                    width: 20,
                    height: 20,
                  ),
                  const Text(
                    'Завантажити',
                    style: TextStyle(
                      color: Color(0xFF84CC16),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

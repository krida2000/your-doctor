import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '/domain/document.dart';
import '/theme.dart';
import '/ui/page/home/widget/widget_button.dart';

class DocumentView extends StatelessWidget {
  const DocumentView(this.document, {super.key});

  final Document document;

  @override
  Widget build(BuildContext context) {
    final Style style = Theme.of(context).extension<Style>()!;
    const double radius = 32;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        boxShadow: [
          BoxShadow(
            color: Color(0x2F3C330D),
            blurRadius: 16,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/document.svg',
                      width: 38,
                      height: 48,
                    ),
                    WidgetButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.more_horiz,
                        color: Color(0xFFC5C8C6),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(document.name, style: style.fonts.xsBold),
                const SizedBox(height: 4),
                DefaultTextStyle(
                  style: style.fonts.xxsMedium.copyWith(
                    color: const Color(0xFF647067),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('${document.filesCount} files'),
                      const SizedBox(width: 5),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Container(
                          width: 4,
                          height: 4,
                          decoration: const BoxDecoration(
                            color: Color(0xFFE3E4E3),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text('${document.size}mb'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFECFCCB),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(radius),
                bottomRight: Radius.circular(radius),
              ),
            ),
            child: WidgetButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/download.svg',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Завантажити',
                      style: TextStyle(
                        color: Color(0xFF84CC16),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

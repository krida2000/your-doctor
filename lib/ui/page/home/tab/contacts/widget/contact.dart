import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '/domain/contact.dart';
import '/theme.dart';

class ContactView extends StatelessWidget {
  const ContactView(this.contact, {super.key});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    final Style style = Theme.of(context).extension<Style>()!;

    return Container(
      decoration: BoxDecoration(
        color: style.colors.secondaryBackground,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      // TODO: replace ListTile with custom widget as ListTile.leading can't
      //       take all ListTile height.
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'assets/images/doctor.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Text(
                            contact.name,
                            overflow: TextOverflow.ellipsis,
                            style: style.fonts.textSBoldContract,
                          ),
                        ),
                        if (contact.verified) ...[
                          const SizedBox(width: 4),
                          SvgPicture.asset(
                            'assets/icons/verified.svg',
                            width: 19.82,
                            height: 20.64,
                          ),
                        ],
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/user.svg',
                        width: 20,
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          contact.profession.toLocalized(),
                          style: style.fonts.textXsRegularOnPrimary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/call.svg',
                        width: 20,
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          contact.phone,
                          style: style.fonts.textXsRegularOnPrimary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/viber.svg',
                        width: 20,
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          contact.viber,
                          style: style.fonts.textXsRegularOnPrimary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '/theme.dart';
import '/ui/page/home/widget/app_bar.dart';
import 'controller.dart';
import 'widget/contact.dart';

class ContactsTab extends StatelessWidget {
  const ContactsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final Style style = Theme.of(context).extension<Style>()!;

    return GetBuilder(
      init: ContactsTabController(),
      builder: (c) {
        return Container(
          color: style.colors.primaryBackground,
          child: Column(
            children: [
              TabAppBar(
                title: 'Контакти',
                trailing: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                  child: SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: style.colors.textFieldBackground,
                        hintText: 'Пошук контакта...',
                        hintStyle: style.fonts.textXsRegularOnPrimary,
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(
                              right: 10, top: 5, bottom: 5),
                          child: SvgPicture.asset(
                            'assets/icons/search.svg',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                background: const DecorationImage(
                  image: AssetImage('assets/images/stethoscope.png'),
                  scale: 6,
                  fit: BoxFit.none,
                  alignment: Alignment.topRight,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: c.contacts.length,
                  itemBuilder: (_, i) => Padding(
                    padding: EdgeInsets.only(
                      left: 8,
                      top: 8,
                      right: 8,
                      bottom: i == c.contacts.length - 1 ? 90 : 8,
                    ),
                    child: ContactView(c.contacts[i]),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/ui/page/home/widget/app_bar.dart';
import 'controller.dart';
import 'widget/contact.dart';

class ContactsTab extends StatelessWidget {
  const ContactsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ContactsTabController(),
      builder: (c) {
        return Container(
          color: const Color(0xFFEFEFF0),
          child: Column(
            children: [
              TabAppBar(
                title: 'Контакти',
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFEFEFF0),
                        hintText: 'Пошук контакта...',
                        suffixIcon: const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.search),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
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

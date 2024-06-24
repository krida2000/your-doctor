import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '/domain/contact.dart';

class ContactView extends StatelessWidget {
  const ContactView(this.contact, {super.key});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      // TODO: replace ListTile with custom widget as ListTile.leading can't
      //       take all ListTile height.
      child: ListTile(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        subtitleTextStyle: const TextStyle(color: Color(0xFF647067)),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            'assets/images/doctor.png',
            fit: BoxFit.cover,
          ),
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
                child: Text(contact.name, overflow: TextOverflow.ellipsis)),
            if (contact.verified) const Icon(Icons.verified_user),
          ],
        ),
        subtitle: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/user.svg',
                  width: 20,
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(contact.profession.toLocalized()),
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/call.svg',
                  width: 20,
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(contact.phone),
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/viber.svg',
                  width: 20,
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(contact.viber),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

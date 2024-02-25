import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';

class SeetingListTile extends StatelessWidget {
  const SeetingListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ListTile(
              onTap: () {},
              title: Text("Notification",
                  style: Styles.textStyle25.copyWith(color: Colors.black)),
              trailing: const Icon(Icons.notifications, size: 32)),
        ),
        ListTile(
            onTap: () {},
            title: Text("Address",
                style: Styles.textStyle25.copyWith(color: Colors.black)),
            trailing: const Icon(Icons.location_on_outlined, size: 35)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ListTile(
              onTap: () {},
              title: Text("About us",
                  style: Styles.textStyle25.copyWith(color: Colors.black)),
              trailing: const Icon(Icons.help_outline_rounded, size: 32)),
        ),
        ListTile(
            onTap: () {},
            title: Text("Contact us",
                style: Styles.textStyle25.copyWith(color: Colors.black)),
            trailing: const Icon(Icons.phone_callback_outlined, size: 32)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ListTile(
              onTap: () {},
              title: Text("Logout",
                  style: Styles.textStyle25.copyWith(color: Colors.black)),
              trailing: const Icon(Icons.logout, size: 32)),
        ),
      ],
    );
  }
}

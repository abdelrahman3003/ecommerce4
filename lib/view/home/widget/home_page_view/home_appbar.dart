import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 236, 229, 229)),
      child: Row(
        children: [
          const SizedBox(width: 20),
          const Icon(Icons.search, size: 28),
          const SizedBox(width: 20),
          Expanded(child: TextFormField()),
          const SizedBox(width: 20),
          const Icon(Icons.notifications_active_outlined, size: 28),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}

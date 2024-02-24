import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          IconButton(
            onPressed: () {
              Get.toNamed(kfavouroteview2);
            },
            icon: const Icon(Icons.notifications_active_outlined, size: 28),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}

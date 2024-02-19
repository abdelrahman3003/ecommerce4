import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CategoryCart extends StatelessWidget {
  const CategoryCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(kItemsView);
            },
            child: Container(
              height: 110,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const Text("data", style: Styles.textStyle18)
        ],
      ),
    );
  }
}

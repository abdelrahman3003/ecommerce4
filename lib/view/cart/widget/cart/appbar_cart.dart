import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppbarCart extends StatelessWidget {
  const AppbarCart({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 3.5),
            child: Text(
              title,
              style: Styles.textStyle25
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

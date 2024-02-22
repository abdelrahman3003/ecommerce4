import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/items/items_view_controller.dart';

class CategoryText extends GetView<ItemsControllerImp> {
  const CategoryText({super.key, required this.text, required this.isactive});
  final String text;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GestureDetector(
        onTap: () {
          if (text == "Phone") {
            controller.changeCategory(0);
            controller.getItems(1);
          } else if (text == "Laptop") {
            controller.changeCategory(1);
            controller.getItems(2);
          } else if (text == "Shoses") {
            controller.changeCategory(2);
            controller.getItems(3);
          } else if (text == "HeadPhones") {
            controller.changeCategory(3);
            controller.getItems(4);
          } else if (text == "Tee_Shirts") {
            controller.changeCategory(4);
            controller.getItems(5);
          } else if (text == "Suits") {
            controller.changeCategory(5);
            controller.getItems(6);
          }
        },
        child: Column(
          children: [
            SizedBox(
                width: 100,
                child: Center(child: Text(text, style: Styles.textStyle18))),
            const SizedBox(height: 4),
            Container(
              width: 100,
              height: isactive ? 4 : 0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:eccommerce4/controller/items/items_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

import 'category_text.dart';

class CategoriesTextList extends StatelessWidget {
  const CategoriesTextList({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return GetBuilder<ItemsControllerImp>(
      builder: (controller) => SizedBox(
        height: 50,
        child: ListView.builder(
          itemCount: controller.itemsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryText(
              text: controller.itemsList[index],
              isactive: controller.categoryNumer == index ? true : false,
            );
          },
        ),
      ),
    );
  }
}

import 'package:eccommerce4/controller/items/items_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/backlinks.dart';
import 'item_card.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemsControllerImp>(
      builder: (controller) => GridView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.5 / 2.8),
        itemCount: controller.items.length,
        itemBuilder: (context, index) {
          return ItemCard(
            itemTitle: controller.items[index]['items_name'],
            itemDes: controller.items[index]['items_des'],
            itemImage:
                "$itemsImageNameLink/${controller.items[index]['items_image']}",
            itemPrice: controller.items[index]['items_price'],
          );
        },
      ),
    );
  }
}

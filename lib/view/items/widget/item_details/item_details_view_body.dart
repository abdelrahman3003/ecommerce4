import 'package:eccommerce4/view/items/widget/item_details/image_Background.dart';
import 'package:eccommerce4/view/items/widget/item_details/item_price.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/items/item_details_controller.dart';
import 'title.dart';

class ItemDetailsViewBody extends StatelessWidget {
  const ItemDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemsDetailsControllerImp>(
      builder: (controller) => Column(
        children: [
          ImageBackground(itemImage: controller.itemModel.itemsImage!),
          ItemTitle(text: controller.itemModel.itemsName!),
          ItemPrice()
        ],
      ),
    );
  }
}

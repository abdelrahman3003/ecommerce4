import 'package:eccommerce4/controller/items/items_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'item_offer_card.dart';

class OfferViewBody extends GetView<ItemsControllerImp> {
  const OfferViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return ItemOfferCard(
      itemModel: controller.items[0],
    );
  }
}

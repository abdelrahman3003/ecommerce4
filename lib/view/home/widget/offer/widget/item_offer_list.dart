import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/home/offer_controller.dart';
import '../../../../../data/model/itemoffer_model.dart';
import 'item_offer_card.dart';

class ItemOfferList extends StatelessWidget {
  const ItemOfferList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemsOfferControllerImp>(
        builder: (controller) => GridView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 1 / .8),
              itemCount: controller.itemsoffer.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: ItemOfferCard(
                    itemOfferModel:
                        ItemOfferModel.fromJson(controller.itemsoffer[index]),
                  ),
                );
              },
            ));
  }
}

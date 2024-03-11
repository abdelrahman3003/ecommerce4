import 'package:eccommerce4/controller/cart/order_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'address_card.dart';

class AddressList extends StatelessWidget {
  const AddressList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderControllerImp>(
        builder: (controller) => Column(
              children: [
                AddessCard(
                  isActive: controller.address == "Home" ? true : false,
                  address: "Home",
                  subaddress: "qena , dishna",
                ),
                const SizedBox(height: 15),
                AddessCard(
                    isActive: controller.address == "Campany" ? true : false,
                    address: "Campany",
                    subaddress: "Cairo , ain shams"),
              ],
            ));
  }
}

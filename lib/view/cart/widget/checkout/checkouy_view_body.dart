import 'package:eccommerce4/controller/cart/check_out_controller.dart';
import 'package:eccommerce4/core/class/data_handling_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../cart/appbar_cart.dart';
import 'address.dart';
import 'checkoutButton.dart';
import 'delivery_type.dart';
import 'payway.dart';
import 'text_title.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CheckoutControllerImp());
    return GetBuilder<CheckoutControllerImp>(
        builder: (controller) => DataHandlingRequsetState(
            statusRequest: controller.statusRequest,
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppbarCart(title: "CheckOut"),
                const SizedBox(height: 12),
                const TextTitle(text: "Choose your pay way"),
                const SizedBox(height: 12),
                PayWay(
                    text: "On delivery",
                    isActive:
                        controller.payWay == "On delivery" ? true : false),
                const SizedBox(height: 12),
                PayWay(
                    text: "on Card",
                    isActive: controller.payWay == "on Card" ? true : false),
                const SizedBox(height: 12),
                const TextTitle(text: "Choose delivery type "),
                const SizedBox(height: 12),
                Row(
                  children: [
                    DeliveryType(
                        icon: Icons.delivery_dining,
                        isActive: controller.deliveryType == "Delivery"
                            ? true
                            : false,
                        text: "Delivery"),
                    const SizedBox(width: 12),
                    DeliveryType(
                        icon: Icons.drive_file_rename_outline,
                        isActive: controller.deliveryType == "Drive Thru"
                            ? true
                            : false,
                        text: "Drive Thru"),
                  ],
                ),
                const SizedBox(height: 12),
                const TextTitle(text: "Shipping address"),
                const SizedBox(height: 12),
                Shoppingaddress(
                  isActive: controller.address == "Home" ? true : false,
                  address: "Home",
                  subaddress: "qena , dishna",
                ),
                const SizedBox(height: 12),
                Shoppingaddress(
                    isActive: controller.address == "Campany" ? true : false,
                    address: "Campany",
                    subaddress: "Cairo , ain shams"),
                const Spacer(),
                const CheckoutButton(tilte: "Checkout"),
              ],
            )));
  }
}

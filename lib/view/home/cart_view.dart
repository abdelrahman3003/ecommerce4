import 'package:eccommerce4/controller/cart/cart_controller.dart';
import 'package:eccommerce4/core/class/data_handilng.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/cart/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CartControllerImp());
    return GetBuilder<CartControllerImp>(
        builder: (controller) => DataHandlingState(
              statusRequest: controller.statusRequest,
              widget: const CartViewBody(),
            ));
  }
}

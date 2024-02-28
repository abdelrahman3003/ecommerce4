import 'package:eccommerce4/core/class/data_handilng.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/cart/cart_controller.dart';
import 'widget/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CartControllerImp());
    return Scaffold(
      body: SafeArea(
          child: GetBuilder<CartControllerImp>(
        builder: (controller) => DataHandlingState(
          statusRequest: controller.statusRequest,
          widget: const CartViewBody(),
        ),
      )),
    );
  }
}

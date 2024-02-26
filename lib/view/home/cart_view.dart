import 'package:eccommerce4/controller/cart/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import 'widget/cart/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CartControllerImp());
    return const CartViewBody();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/cart/cart_controller.dart';
import '../../controller/cart/test_Controller.dart';
import '../cart/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CartControllerImp());
    return const Scaffold(
      body: SafeArea(child: CartViewBody()),
    );
  }
}

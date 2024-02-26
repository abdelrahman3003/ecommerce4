import 'package:eccommerce4/controller/cart/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'appbar_cart.dart';
import 'cart_button.dart';
import 'cart_items_list.dart';
import 'count_items.dart';
import 'subitems_list.dart';

class CartViewBody extends GetView<CartControllerImp> {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const AppbarCart(),
          CountItems(count: controller.tolalcount),
          const SizedBox(height: 20),
          Expanded(
              child: CartItemsList(cartItemsList: controller.cartmodelLsit)),
          SubitemsList(
            price: "${controller.tolalprice}",
            shopping: "200",
            totalprice: "1000",
          ),
          const CartButton()
        ],
      ),
    );
  }
}

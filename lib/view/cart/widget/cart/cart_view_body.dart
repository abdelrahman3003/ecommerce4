import 'package:eccommerce4/controller/cart/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'appbar_cart.dart';
import 'cart_button.dart';
import 'cart_items_list.dart';
import 'count_items.dart';
import 'coupon_state_handiling.dart';
import 'subitem.dart';

class CartViewBody extends GetView<CartControllerImp> {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const AppbarCart(title: "My Cart"),
          CountItems(count: controller.tolalcount),
          const SizedBox(height: 20),
          Expanded(
              child: CartItemsList(cartItemsList: controller.cartmodelLsit)),
          const CouponStateHandling(),
          Subitem(totalprice: "${controller.tolalprice}"),
          const CartButton(
            tilte: "Order",
          )
        ],
      ),
    );
  }
}

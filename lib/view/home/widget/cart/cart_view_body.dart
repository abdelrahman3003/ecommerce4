import 'package:flutter/material.dart';

import 'appbar_cart.dart';
import 'cart_button.dart';
import 'cart_items_list.dart';
import 'count_items.dart';
import 'subitems_list.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          AppbarCart(),
          CountItems(count: 2),
          SizedBox(height: 20),
          Expanded(child: CartItemsList()),
          SubitemsList(),
          CartButton()
        ],
      ),
    );
  }
}

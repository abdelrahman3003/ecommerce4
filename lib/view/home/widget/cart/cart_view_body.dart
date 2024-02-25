import 'package:flutter/material.dart';

import 'appbar_cart.dart';
import 'count_items.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppbarCart(),
        CountItems(count: 2),
      ],
    );
  }
}

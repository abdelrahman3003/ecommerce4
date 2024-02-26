import 'package:flutter/material.dart';

import 'cart_item.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key, required this.cartItemsList});
  final List cartItemsList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: cartItemsList.length,
      itemBuilder: (context, index) => CartItem(
          image: cartItemsList[index]['items_image'],
          title: cartItemsList[index]['items_name'],
          price: cartItemsList[index]['items_price'],
          count: cartItemsList[index]['itemcount']),
    );
  }
}

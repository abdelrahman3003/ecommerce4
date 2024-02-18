import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';

import 'product_cart.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Styles.textStyle20.copyWith(color: Colors.black),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, index) => const ProductCart(),
          ),
        ),
      ],
    );
  }
}

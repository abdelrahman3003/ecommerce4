import 'package:flutter/material.dart';

import '../../../core/shared/styles.dart';
import 'category_cart.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: Styles.textStyle20.copyWith(color: Colors.black),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const CategoryCart();
            },
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
          ),
        ),
      ],
    );
  }
}

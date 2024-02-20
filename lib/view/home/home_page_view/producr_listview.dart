import 'package:eccommerce4/controller/home/home_controller.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/backlinks.dart';
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
        GetBuilder<HomePageControllerImp>(
          builder: (controller) => SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: controller.items.length,
              itemBuilder: (context, index) => ProductCart(
                  itemImage:
                      "$itemsImageNameLink/${controller.items[index]['items_image']}"),
            ),
          ),
        )
      ],
    );
  }
}

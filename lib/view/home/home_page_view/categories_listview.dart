import 'package:eccommerce4/controller/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/shared/styles.dart';
import 'category_cart.dart';

class CategoriesListView extends GetView<HomePageControllerImp> {
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
            itemCount: controller.categories.length,
            itemBuilder: (context, index) {
              return CategoryCart(
                imgUrlCategory: controller.categories[index]['categories_name'],
                nameCategory: controller.categories[index]['categories_image'],
              );
            },
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
          ),
        ),
      ],
    );
  }
}

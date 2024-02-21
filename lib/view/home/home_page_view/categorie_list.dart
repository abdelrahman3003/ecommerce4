import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';

import '../../../controller/home/home_controller.dart';
import '../../../core/constant/backlinks.dart';
import 'category_cart.dart';

class CategoriesList extends GetView<HomePageControllerImp> {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: controller.categories.length,
        itemBuilder: (context, index) {
          return CategoryCart(
            categoryid: index + 1,
            nameCategory: controller.categories[index]['categories_name'],
            imgUrlCategory:
                "$categoriesImageNameLink/${controller.categories[index]['categories_image']}",
          );
        },
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}

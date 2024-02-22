import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../controller/items/items_controller.dart';

class CategoryCart extends StatelessWidget {
  const CategoryCart(
      {super.key,
      required this.categoryid,
      required this.imgUrlCategory,
      required this.nameCategory});
  final String imgUrlCategory;
  final String nameCategory;
  final int categoryid;
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ItemsControllerImp());
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              controller.getItems(categoryid);
            },
            child: Container(
                height: 110,
                width: 100,
                decoration: BoxDecoration(
                  color: ColorsApp.kprimaryColor2,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SvgPicture.network(imgUrlCategory)),
          ),
          Text(nameCategory, style: Styles.textStyle18)
        ],
      ),
    );
  }
}

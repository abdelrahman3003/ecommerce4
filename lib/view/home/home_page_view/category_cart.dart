import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

class CategoryCart extends StatelessWidget {
  const CategoryCart(
      {super.key, required this.imgUrlCategory, required this.nameCategory});
  final String imgUrlCategory;
  final String nameCategory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(kItemsView);
            },
            child: Container(
                height: 110,
                width: 100,
                decoration: BoxDecoration(
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

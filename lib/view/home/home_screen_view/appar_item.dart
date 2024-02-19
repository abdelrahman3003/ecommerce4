import 'package:eccommerce4/controller/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/constatns_value.dart';
import '../../../core/shared/styles.dart';

class AppbarItem extends GetView<HomePageControllerImp> {
  const AppbarItem({
    super.key,
    required this.iconName,
    required this.icon,
  });
  final String iconName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              if (iconName == ConstanstValue.favourite) {
                controller.changepage(1);
              }
              if (iconName == ConstanstValue.cart) {
                controller.changepage(2);
              }
              if (iconName == ConstanstValue.setting) {
                controller.changepage(3);
              } else {
                controller.changepage(0);
              }
            },
            icon: Icon(icon, size: 28, color: Colors.black),
          ),
          Text(
            iconName,
            style: Styles.textStyle16,
          ),
        ],
      ),
    );
  }
}

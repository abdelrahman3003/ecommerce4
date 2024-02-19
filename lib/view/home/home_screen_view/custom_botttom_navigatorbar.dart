import 'package:eccommerce4/controller/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/constatns_value.dart';
import 'appar_item.dart';

class AppBottomNavigatorBar extends GetView<HomePageControllerImp> {
  const AppBottomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Row(
        children: [
          AppbarItem(icon: Icons.home, iconName: ConstanstValue.home),
          AppbarItem(
              icon: Icons.favorite_outline, iconName: ConstanstValue.favourite),
          Spacer(),
          AppbarItem(icon: Icons.card_travel, iconName: ConstanstValue.cart),
          AppbarItem(icon: Icons.settings, iconName: ConstanstValue.setting),
        ],
      ),
    );
  }
}

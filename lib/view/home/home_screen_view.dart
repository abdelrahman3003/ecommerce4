import 'package:eccommerce4/controller/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

import 'home_screen_view/custom_botttom_navigatorbar.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    return Scaffold(
        bottomNavigationBar: const AppBottomNavigatorBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.home)),
        body: GetBuilder<HomePageControllerImp>(
          builder: (controller) {
            return SafeArea(child: controller.pageList[controller.pageCount]);
          },
        ));
  }
}

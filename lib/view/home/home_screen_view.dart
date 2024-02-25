import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home/home_screen_controller.dart';
import 'widget/home_screen_view/custom_botttom_navigatorbar.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return Scaffold(
        bottomNavigationBar: const AppBottomNavigatorBar(),
        //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: FloatingActionButton(
        //     backgroundColor: ColorsApp.kprimaryColor1,
        //     onPressed: () {},
        //     child: const Icon(Icons.home)),
        body: GetBuilder<HomeScreenControllerImp>(
          builder: (controller) {
            return SafeArea(child: controller.pageList[controller.pageCount]);
          },
        ));
  }
}

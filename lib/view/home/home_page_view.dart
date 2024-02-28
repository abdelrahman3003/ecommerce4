import 'package:eccommerce4/controller/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/cart/cart_controller.dart';
import '../../controller/cart/test_Controller.dart';
import '../../core/class/data_handling_request.dart';
import 'widget/home_page_view/home_view_body.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: GetBuilder<HomePageControllerImp>(
          builder: (controller) => DataHandlingRequsetState(
            statusRequest: controller.statusRequest,
            widget: const HomeViewBody(),
          ),
        ));
  }
}

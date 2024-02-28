import 'package:eccommerce4/controller/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/home_page_view/home_view_body.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12), child: HomeViewBody());
  }
}

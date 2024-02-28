import 'package:eccommerce4/controller/home/home_controller.dart';
import 'package:eccommerce4/controller/search/search_controller.dart';
import 'package:eccommerce4/view/home/widget/home_page_view/home_appbar.dart';
import 'package:eccommerce4/view/search/serch_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/home_page_view/home_view_body.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    Get.put(SearchControllerImp());
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomeAppbar(),
              GetBuilder<SearchControllerImp>(
                builder: (controller) => !controller.isSearch
                    ? const HomeViewBody()
                    : const SearchView(),
              )
            ],
          ),
        ));
  }
}

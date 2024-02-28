import 'package:eccommerce4/controller/search/search_controller.dart';
import 'package:eccommerce4/view/search/serch_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'categories_listview.dart';
import 'discount_container.dart';
import 'home_appbar.dart';
import 'producr_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SearchControllerImp());
    return Column(
      children: [
        const HomeAppbar(),
        GetBuilder<SearchControllerImp>(
          builder: (controller) => controller.isSearch
              ? const SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      DiscountContainer(),
                      SizedBox(height: 20),
                      CategoriesListView(),
                      SizedBox(height: 20),
                      ProductListView(text: "Product For Your"),
                      SizedBox(height: 20),
                      ProductListView(text: "Offer"),
                      SizedBox(height: 50),
                    ],
                  ))
              : const SearchView(),
        )
      ],
    );
  }
}

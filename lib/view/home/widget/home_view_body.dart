import 'package:flutter/material.dart';

import 'categories_listview.dart';
import 'discount_container.dart';
import 'home_appbar.dart';
import 'producr_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeAppbar(),
        SizedBox(height: 20),
        DiscountContainer(),
        SizedBox(height: 20),
        CategoriesListView(),
        SizedBox(height: 20),
        ProductListView()
      ],
    );
  }
}

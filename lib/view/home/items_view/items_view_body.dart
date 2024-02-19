import 'package:eccommerce4/view/home/home_page_view/home_appbar.dart';
import 'package:flutter/material.dart';

import 'categoriew_text_list.dart';

class ItemsViewBody extends StatelessWidget {
  const ItemsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(height: 30),
        HomeAppbar(),
        SizedBox(height: 30),
        CategoriesTextList()
      ],
    ));
  }
}

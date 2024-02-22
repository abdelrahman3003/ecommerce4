import 'package:eccommerce4/controller/items/items_controller.dart';
import 'package:eccommerce4/core/class/data_handilng.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../home/widget/home_page_view/home_appbar.dart';
import 'categoriew_text_list.dart';
import 'items_list_view.dart';

class ItemsViewBody extends StatelessWidget {
  const ItemsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: 30),
              HomeAppbar(),
              SizedBox(height: 30),
              CategoriesTextList(),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: GetBuilder<ItemsControllerImp>(
            builder: (controller) => DataHandlingState(
                statusRequest: controller.statusRequest,
                widget: const ItemListView()),
          ),
        )
      ],
    );
  }
}

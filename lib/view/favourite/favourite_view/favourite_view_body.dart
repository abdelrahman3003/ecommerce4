import 'package:eccommerce4/controller/items/myfavourites_controller.dart';
import 'package:eccommerce4/core/class/data_handilng.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../home/widget/home_page_view/home_appbar.dart';
import 'favourite_list_view.dart';

class FavouriteViewBody extends StatelessWidget {
  const FavouriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(height: 10),
          const HomeAppbar(),
          const SizedBox(height: 30),
          GetBuilder<MyFavouritesCOntrollerImp>(
              builder: (controller) => DataHandlingState(
                    statusRequest: controller.statusRequest,
                    widget: const FavouriteListView(),
                  ))
        ],
      ),
    );
  }
}

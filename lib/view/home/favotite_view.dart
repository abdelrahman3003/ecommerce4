import 'package:eccommerce4/controller/items/myfavourites_controller.dart';
import 'package:eccommerce4/core/class/data_handilng.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/favourite_view/favourite_view_body.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavouritesCOntrollerImp());
    return GetBuilder<MyFavouritesCOntrollerImp>(
      builder: (controller) => Center(
        child: DataHandlingState(
            statusRequest: controller.statusRequest,
            widget: const FavouriteViewBody()),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/items/myfavourites_controller.dart';
import 'favourite_view/favourite_view_body.dart';

class FavouriteView2 extends StatelessWidget {
  const FavouriteView2({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavouritesCOntrollerImp());
    return const Scaffold(
      body: FavouriteViewBody(),
    );
  }
}

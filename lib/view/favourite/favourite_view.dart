import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/items/myfavourites_controller.dart';
import 'favourite_view/favourite_view_body.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavouritesCOntrollerImp());
    return const Scaffold(
      body: SafeArea(child: FavouriteViewBody()),
    );
  }
}

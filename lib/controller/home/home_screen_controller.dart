import 'package:eccommerce4/view/home/home_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../view/favourite/favourite_view.dart';
import '../../view/home/cart_view.dart';

import '../../view/home/setting_view.dart';

abstract class HomeScreenController extends GetxController {
  changepage(int i);
}

class HomeScreenControllerImp extends HomeScreenController {
  int pageCount = 0;
  List<Widget> pageList = [
    const HomePageView(),
    const FavouriteView(),
    const CartView(),
    const SettingView()
  ];
  @override
  changepage(i) {
    pageCount = i;
    update();
  }
}

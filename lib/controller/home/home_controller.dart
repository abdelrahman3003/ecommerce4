import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../view/home/cart_view.dart';
import '../../view/home/favotite_view.dart';
import '../../view/home/home_page_view.dart';
import '../../view/home/setting_view.dart';

abstract class HomeController extends GetxController {
  changepage(int i);
}

class HomePageControllerImp extends HomeController {
  int pageCount = 0;
  bool isactive = false;
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

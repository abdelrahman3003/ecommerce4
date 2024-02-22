import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:eccommerce4/data/datasource/remote/home/home_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/class/statuscode.dart';
import '../../core/functions/handling _data.dart';
import '../../data/datasource/remote/items/items_data.dart';
import '../../view/home/cart_view.dart';
import '../../view/home/favotite_view.dart';
import '../../view/home/home_page_view.dart';
import '../../view/home/setting_view.dart';

abstract class HomeController extends GetxController {
  changepage(int i);
  getAllDataHome();
  goToItems(List categoreis, int selectedCa);
}

class HomePageControllerImp extends HomeController {
  GetHomeData getHomeData = GetHomeData(Get.find());
  GetItemData getItemData = GetItemData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  int pageCount = 0;
  bool isactive = false;
  List categories = [];
  List items = [];

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

  @override
  getAllDataHome() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await getHomeData.getHomeData();
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;
      } else {
        categories.addAll(response['categories']);
        items.addAll(response['items']);
      }
    }
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getAllDataHome();
  }

  @override
  goToItems(List categoreis, int selectedCat) {
    Get.toNamed(
      kItemDetailsView,
      arguments: {"categories": categories, "selectedCat": selectedCat},
    );
  }
}

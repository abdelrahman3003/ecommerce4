import 'package:eccommerce4/data/datasource/remote/home/home_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/class/statuscode.dart';
import '../../core/functions/handling _data.dart';
import '../../view/home/cart_view.dart';
import '../../view/home/favotite_view.dart';
import '../../view/home/home_page_view.dart';
import '../../view/home/setting_view.dart';

abstract class HomeController extends GetxController {
  changepage(int i);
  getAllDataHome();
}

class HomePageControllerImp extends HomeController {
  GetHomeData getHomeData = GetHomeData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  int pageCount = 0;
  bool isactive = false;
  List categories = [];

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
        print("=========== 2");
      } else {
        categories.addAll(response['categories']);
        update();
      }
    }
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getAllDataHome();
  }
}

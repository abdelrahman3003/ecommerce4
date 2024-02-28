import 'package:eccommerce4/core/services/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

abstract class SearchController extends GetxController {
  checkSearch(String val);
  search();
}

class SearchControllerImp extends SearchController {
  AppServices appServices = Get.find();

  bool isSearch = false;
  TextEditingController? searchText;
  @override
  checkSearch(String val) {
    if (val == "") {
      isSearch = false;
    }
    update();
  }

  @override
  search() {
    isSearch = true;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    searchText = TextEditingController();
  }
}

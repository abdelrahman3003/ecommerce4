import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statuscode.dart';
import '../../core/functions/handling _data.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/cart/cart_data.dart';

abstract class CartController extends GetxController {
  addCart(itemid);
  removeCart(itemid);
}

class CartControllerImp extends CartController {
  StatusRequest statusRequest = StatusRequest.none;
  CartData cartData = CartData(Get.find());
  AppServices appServices = Get.find();
  Map favourite = {};

  @override
  addCart(itemid) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await cartData.addCart(
        "$itemid", appServices.sharedPreferences.getString("id")!);
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;
      } else {
        Get.rawSnackbar(
            title: "alarm",
            messageText: Text(
              "this product is removed to favourites",
              style: Styles.textStyle16.copyWith(color: Colors.white),
            ));
      }
    }
  }

  @override
  removeCart(itemid) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await cartData.removeCart(
        "$itemid", appServices.sharedPreferences.getString("id")!);
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;
      } else {
        Get.rawSnackbar(
            title: "alarm",
            messageText: const Text(
              "this product is added to favourites",
              style: Styles.textStyle16,
            ));
      }
    }
  }
}

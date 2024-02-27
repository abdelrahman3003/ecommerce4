import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statuscode.dart';
import '../../core/functions/handling _data.dart';
import '../../core/services/services.dart';
import '../../core/shared/styles.dart';
import '../../data/datasource/remote/cart/cart_data.dart';
import '../../data/model/cart_model.dart';

abstract class CartController extends GetxController {
  addCart(itemid);
  removeCart(itemid);
  viewCart();
  getCountItem(itemid);
}

class CartControllerImp extends CartController {
  StatusRequest statusRequest = StatusRequest.none;
  CartData cartData = CartData(Get.find());
  AppServices appServices = Get.find();
  List<CartModel> cartmodelLsit = [];

  late int tolalprice;
  late int tolalcount;
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
              "1 product is added to your cart",
              style: Styles.textStyle16.copyWith(color: Colors.white),
            ));
      }
    }
    update();
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
            messageText: Text(
              "1 product is removed from your cart",
              style: Styles.textStyle16.copyWith(color: Colors.white),
            ));
      }
    }
    update();
  }

  @override
  viewCart() async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await cartData.viewCart(appServices.sharedPreferences.getString("id")!);
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;
      } else {
        List data = response["data"];
        cartmodelLsit.addAll(data.map((e) => CartModel.fromJson(e)));
        tolalprice = response['countprice']['totalprice'];
        tolalcount = int.parse(response['countprice']['totalcount']);
      }
    }
    update();
  }

  @override
  getCountItem(itemid) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await cartData.getCountItem(
        itemid, appServices.sharedPreferences.getString("id")!);
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;
      } else {
        return response["data"];
      }
    }
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    viewCart();
  }
}

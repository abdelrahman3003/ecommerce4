import 'package:get/get.dart';

import '../../core/class/statuscode.dart';
import '../../core/functions/handling _data.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/cart/cart_data.dart';

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

  int countfront = 0;
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
      } else {}
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
      } else {}
    }
    update();
  }

  @override
  viewCart() {}

  @override
  getCountItem(itemid) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await cartData.getCountItem(
        "$itemid", appServices.sharedPreferences.getString("id")!);
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
}

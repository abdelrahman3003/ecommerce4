import 'package:get/get.dart';

import '../../core/class/statuscode.dart';
import '../../core/functions/handling _data.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/cart/cart_data.dart';

abstract class CartController extends GetxController {
  addCart(itemid);
  removeCart(itemid);
  viewCart();
  incrementCount();
  decrementCount();
}

class CartControllerImp extends CartController {
  StatusRequest statusRequest = StatusRequest.none;
  CartData cartData = CartData(Get.find());
  AppServices appServices = Get.find();

  int count = 0;
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
  viewCart() {
    // TODO: implement viewCart
    throw UnimplementedError();
  }

  @override
  decrementCount() {
    count++;
    update();
  }

  @override
  incrementCount() {
    if (count >= 0) count = count - 1;
    update();
  }
}

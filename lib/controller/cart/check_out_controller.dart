import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:get/get.dart';

import '../../core/class/statuscode.dart';
import '../../core/functions/handling _data.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/order/order_data.dart';

abstract class CheckoutController extends GetxController {
  choosePayWay(String val);
  chooseDeliveryType(String val);
  chooseAddress(String val);
  checkout();
}

class CheckoutControllerImp extends CheckoutController {
  StatusRequest statusRequest = StatusRequest.none;
  OrderData orderData = OrderData(Get.find());
  AppServices appServices = Get.find();
  String? payWay;
  String? deliveryType;
  String address = "0";
  dynamic priceorder;
  String? ordercoupon;
  @override
  void onInit() {
    super.onInit();
    priceorder = Get.arguments['priceorder'];
    ordercoupon = Get.arguments['couponName'];
    ordercoupon ?? "null";
  }

  @override
  chooseAddress(val) {
    address = val;
    update();
  }

  @override
  chooseDeliveryType(val) {
    deliveryType = val;
    update();
  }

  @override
  choosePayWay(val) {
    payWay = val;
    update();
  }

  @override
  checkout() async {
    if (payWay == null) {
      return Get.snackbar("alarm", "please payway to checkout ");
    }

    if (deliveryType == null) {
      return Get.snackbar("alarm", "please order type  to checkout ");
    }
    statusRequest = StatusRequest.loading;
    update();
    Map data = {
      "userid": appServices.sharedPreferences.getString("id")!,
      "addressid": address.toString(),
      "orderprice": priceorder.toString(),
      "orderpricedelivery": '10',
      "ordercoupon": ordercoupon.toString(),
      "ordertype": deliveryType.toString(),
      "orderspaymentmethod": payWay.toString(),
    };
    var response = await orderData.checkout(data);
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;
        Get.snackbar("alarm", "there was an error");
        print("======== failure");
      } else {
        print("======== sucess");
        Get.offAllNamed(kHomeScreenView);
        Get.snackbar("alarm", "cart is empty");
      }
    }
    update();
  }
}

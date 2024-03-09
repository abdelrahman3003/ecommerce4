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
  String? address;
  dynamic priceorder;
  int? ordercoupon;
  @override
  void onInit() {
    super.onInit();
    priceorder = Get.arguments['priceorder'];
    ordercoupon = Get.arguments['couponid'];
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
    statusRequest = StatusRequest.loading;
    update();
    Map data = {
      "userid": appServices.sharedPreferences.getString("id")!,
      "addressid": '1',
      "orderprice": priceorder.toString(),
      "orderpricedelivery": '10',
      "ordercoupon": ordercoupon.toString(),
      "ordertype": '1',
      "orderspaymentmethod": '1',
    };
    var response = await orderData.checkout(data);
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;
        print("=============== failure");
      } else {
        Get.offNamed(kCartView);
      }
    }
    update();
  }
}

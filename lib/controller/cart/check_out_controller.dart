import 'package:get/get.dart';

import '../../core/class/statuscode.dart';

abstract class CheckoutController extends GetxController {
  choosePayWay(String val);
  chooseDeliveryType(String val);
  chooseAddress(String val);
}

class CheckoutControllerImp extends CheckoutController {
  StatusRequest statusRequest = StatusRequest.none;
  String? payWay;
  String? deliveryType;
  String? address;
  @override
  chooseAddress(val) {
    payWay = val;
    update();
  }

  @override
  chooseDeliveryType(val) {
    deliveryType = val;
    update();
  }

  @override
  choosePayWay(val) {
    address = val;
    update();
  }
}

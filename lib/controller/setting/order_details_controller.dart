import 'package:get/get.dart';
import '../../core/class/statuscode.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/order/order_data.dart';
import '../../data/model/order_model.dart';

abstract class OrderDetailsController extends GetxController {
  getOrderDetails();
}

class OrderDetailsControllerImp extends OrderDetailsController {
  StatusRequest statusRequest = StatusRequest.none;
  OrderData orderData = OrderData(Get.find());
  AppServices appServices = Get.find();
  List<OrderModel> orderDtailsList = [];

  @override
  getOrderDetails() {}
}

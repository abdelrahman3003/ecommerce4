import 'package:get/get.dart';
import '../../core/class/statuscode.dart';
import '../../core/constant/routsApp.dart';
import '../../core/functions/handling _data.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/order/order_data.dart';
import '../../data/model/order_model.dart';

abstract class OrderController extends GetxController {
  viewOrder();
  refreshOrderpage();
  goToOrederDetails(OrderModel orderModel);
}

class OrderControllerImp extends OrderController {
  StatusRequest statusRequest = StatusRequest.none;
  OrderData orderData = OrderData(Get.find());
  AppServices appServices = Get.find();
  List<OrderModel> orderList = [];

  @override
  viewOrder() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await orderData
        .viewOrder(appServices.sharedPreferences.getString("id")!);
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
      } else {
        List data = response["data"];
        orderList.addAll(data.map((e) => OrderModel.fromJson(e)));
      }
    }
    update();
  }

  @override
  void onInit() {
    super.onInit();
    viewOrder();
  }

  @override
  refreshOrderpage() async {
    orderList.clear();
    await viewOrder();
  }

  @override
  goToOrederDetails(orderModel) {
    Get.toNamed(kOrderDetailsView, arguments: {"ordermodel": orderModel});
    update();
  }
}

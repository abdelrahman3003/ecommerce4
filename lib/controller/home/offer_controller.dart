import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:eccommerce4/core/services/services.dart';
import 'package:get/get.dart';
import '../../core/class/statuscode.dart';
import '../../data/datasource/remote/items/items_data.dart';
import '../../core/functions/handling _data.dart';

abstract class ItemsOfferController extends GetxController {
  getOfferItems();
}

class ItemsOfferControllerImp extends ItemsOfferController {
  GetItemData getItemData = GetItemData(Get.find());
  AppServices appServices = Get.find();
  StatusRequest statusRequest = StatusRequest.none;
  late int selectedCat;
  List items = [];
  List categories = [];

  @override
  getOfferItems() async {
    items = [];
    statusRequest = StatusRequest.loading;
    update();
    var response = await getItemData.getItemData(
        1, appServices.sharedPreferences.getString("id")!);
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;

        Get.toNamed(kItemsView);
      } else {
        items.addAll(response['data']);
        Get.toNamed(kItemsView);
      }
      update();
    }
  }

  @override
  void onInit() {
    super.onInit();
    getOfferItems();
  }
}

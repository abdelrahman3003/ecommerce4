import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:eccommerce4/data/datasource/remote/home/home_data.dart';
import 'package:get/get.dart';
import '../../core/class/statuscode.dart';
import '../../core/functions/handling _data.dart';
import '../../data/datasource/remote/items/items_data.dart';

abstract class HomeController extends GetxController {
  getAllDataHome();
  goToItems(List categoreis, int selectedCa);
}

class HomePageControllerImp extends HomeController {
  GetHomeData getHomeData = GetHomeData(Get.find());
  GetItemData getItemData = GetItemData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  int pageCount = 0;
  List categories = [];
  List items = [];

  @override
  getAllDataHome() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await getHomeData.getHomeData();
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;
      } else {
        categories.addAll(response['categories']);
        items.addAll(response['items']);
      }
    }
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getAllDataHome();
  }

  @override
  goToItems(categoreis, selectedCa) {
    Get.toNamed(
      kItemsView,
      arguments: {"categories": categories, "selectedCat": selectedCa},
    );
    update();
  }
}

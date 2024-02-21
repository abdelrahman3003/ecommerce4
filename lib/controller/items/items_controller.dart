import 'package:get/get.dart';

import '../../core/class/statuscode.dart';
import '../../core/functions/handling _data.dart';
import '../../data/datasource/remote/items/items_data.dart';

abstract class ItemsController extends GetxController {
  changeCategory(int i);
  getItems(int i);
}

class ItemsControllerImp extends ItemsController {
  GetItemData getItemData = GetItemData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  int pageCount = 0;
  int categoryNumer = 0;
  List<String> itemsList = [
    'Laptops',
    'Cameras',
    'Phones',
    'Shoses',
    'HeadPhones',
    'Tee_Shirts',
    'Suits'
  ];
  @override
  changeCategory(i) {
    categoryNumer = i;
    update();
  }

  @override
  getItems(int i) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await await getItemData.getitemData(i);
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;
      } else {
        update();
      }
    }
    update();
  }
}

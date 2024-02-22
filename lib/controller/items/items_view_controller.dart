import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:get/get.dart';

import '../../core/class/statuscode.dart';
import '../../data/datasource/remote/items/items_data.dart';
import '../../core/functions/handling _data.dart';

abstract class ItemsController extends GetxController {
  changeCategory(int i);
  getItems(int index);
  goToItemDetails();
}

class ItemsControllerImp extends ItemsController {
  GetItemData getItemData = GetItemData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  int pageCount = 0;
  int categoryNumer = 0;
  List items = [];
  List<String> itemsList = [
    'Phone',
    'Laptop',
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
  getItems(index) async {
    items = [];
    statusRequest = StatusRequest.loading;

    update();
    var response = await getItemData.getItemData(index);
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;

        Get.toNamed(kItemsView);
      } else {
        items.addAll(response['data']);
        Get.toNamed(kItemsView);
      }
      categoryNumer = index - 1;
      update();
    }
  }

  @override
  goToItemDetails() {
    Get.toNamed(kItemDetailsView, arguments: ["itemModel"]);
    update();
  }
}

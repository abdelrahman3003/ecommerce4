import 'package:get/get.dart';

import '../../core/class/statuscode.dart';
import '../../data/datasource/remote/items/items_data.dart';

abstract class ItemsController extends GetxController {
  changeCategory(int i);
}

class ItemsControllerImp extends ItemsController {
  GetItemData getItemData = GetItemData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  int pageCount = 0;
  int categoryNumer = 0;
  List items = [];
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
  void onInit() {
    super.onInit();
    items = Get.arguments['items'];
  }
}

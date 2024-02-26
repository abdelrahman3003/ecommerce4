import 'package:eccommerce4/core/class/statuscode.dart';
import 'package:eccommerce4/data/model/items_model.dart';
import 'package:get/get.dart';

import '../cart/cart_controller.dart';

abstract class ItemsDetailsController extends GetxController {
  inialData();
  add();
  remove();
}

class ItemsDetailsControllerImp extends ItemsDetailsController {
  late ItemModel itemModel;
  CartControllerImp cartControllerImp = Get.put(CartControllerImp());
  int count = 0;
  @override
  inialData() async {
    cartControllerImp.statusRequest = StatusRequest.loading;
    itemModel = Get.arguments['itemModel'];
    count = await cartControllerImp.getCountItem(itemModel.itemsId);
    cartControllerImp.statusRequest = StatusRequest.success;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    inialData();
  }

  @override
  remove() {
    cartControllerImp.removeCart(itemModel.itemsCat);
    if (count >= 0) count--;
    update();
  }

  @override
  add() {
    cartControllerImp.addCart(itemModel.itemsCat);
    count++;
    update();
  }
}

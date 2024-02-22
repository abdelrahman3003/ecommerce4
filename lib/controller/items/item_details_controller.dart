import 'package:eccommerce4/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ItemsDetailsController extends GetxController {
  inialData();
}

class ItemsDetailsControllerImp extends ItemsDetailsController {
  late ItemModel itemModel;
  @override
  inialData() {}
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    inialData();
    itemModel = Get.arguments['itemModel'];
  }
}

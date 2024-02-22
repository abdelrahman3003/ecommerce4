import 'package:eccommerce4/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ItemDetailsController extends GetxController {}

class ItemDetailsControllerImp extends ItemDetailsController {
  late ItemModel itemModel;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    itemModel = Get.arguments["itemModel"];
  }
}

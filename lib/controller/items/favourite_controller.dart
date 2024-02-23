import 'package:get/get.dart';

import '../../core/class/statuscode.dart';
import '../../core/functions/handling _data.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/items/favourite.dart';

abstract class FavouriteController extends GetxController {
  setFavourite(id, val);
  setFavouriteback(itemid);
}

class FavouriteControllerImp extends FavouriteController {
  StatusRequest statusRequest = StatusRequest.none;
  AddToFavourite addToFavourite = AddToFavourite(Get.find());
  AppServices appServices = Get.find();
  Map favourite = {};
  @override
  setFavourite(id, val) {
    favourite[id] = val;
    update();
  }

  @override
  setFavouriteback(itemid) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await addToFavourite.addFavourite(
        itemid, appServices.sharedPreferences.getString("id")!);
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;
      } else {}
      update();
    }
  }
}

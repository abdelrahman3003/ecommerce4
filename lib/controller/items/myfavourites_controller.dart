import 'package:get/get.dart';

import '../../core/class/statuscode.dart';
import '../../core/functions/handling _data.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/items/myfavourites.dart';

abstract class MyFavouritesCOntroller extends GetxController {
  viewMyfavourite();
}

class MyFavouritesCOntrollerImp extends MyFavouritesCOntroller {
  StatusRequest statusRequest = StatusRequest.none;
  AppServices appServices = Get.find();
  MyFavourites myFavourites = MyFavourites(Get.find());
  List myfavouritesList = [];
  @override
  viewMyfavourite() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await myFavourites
        .viewmyvafourite(appServices.sharedPreferences.getString("id")!);
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;
      } else {
        myfavouritesList = response['data'];
      }
    }
    update();
  }
}

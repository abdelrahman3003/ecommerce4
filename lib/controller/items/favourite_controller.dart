import 'package:get/get.dart';

abstract class FavouriteController extends GetxController {
  setFavourite(id, val);
}

class FavouriteControllerImp extends FavouriteController {
  Map favourite = {};
  @override
  setFavourite(id, val) {
    favourite[id] = val;
    update();
  }
}

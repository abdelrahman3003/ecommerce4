import 'package:get/get.dart';

abstract class FavouriteController extends GetxController {
  setFavourite(String id, String val);
}

class FavouriteControllerImp extends FavouriteController {
  Map favourite = {};
  @override
  setFavourite(id, val) {
    favourite[id] = val;
  }
}

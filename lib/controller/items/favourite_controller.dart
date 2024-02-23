import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statuscode.dart';
import '../../core/functions/handling _data.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/items/favourite.dart';

abstract class FavouriteController extends GetxController {
  setFavourite(id, val);
  addFavourite(itemid);
  removeFavourite(itemid);
  viewmyfavourites();
}

class FavouriteControllerImp extends FavouriteController {
  StatusRequest statusRequest = StatusRequest.none;
  AddToFavourite addToFavourite = AddToFavourite(Get.find());
  List myfavouritesList = [];
  AppServices appServices = Get.find();
  Map favourite = {};
  @override
  setFavourite(id, val) {
    favourite[id] = val;
    update();
  }

  @override
  addFavourite(itemid) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await addToFavourite.addFavourite(
        "$itemid", appServices.sharedPreferences.getString("id")!);
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;
      } else {
        Get.rawSnackbar(
            title: "alarm",
            messageText: Text(
              "this product is removed to favourites",
              style: Styles.textStyle16.copyWith(color: Colors.white),
            ));
      }
    }
  }

  @override
  removeFavourite(itemid) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await addToFavourite.removeFavourite(
        "$itemid", appServices.sharedPreferences.getString("id")!);
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;
      } else {
        Get.rawSnackbar(
            title: "alarm",
            messageText: const Text(
              "this product is added to favourites",
              style: Styles.textStyle16,
            ));
      }
    }
  }

  @override
  viewmyfavourites() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await addToFavourite
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

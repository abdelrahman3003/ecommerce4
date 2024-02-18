import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:eccommerce4/core/services/services.dart';
import 'package:get/get.dart';

import '../../core/class/statuscode.dart';
import '../../core/functions/handling _data.dart';
import '../../data/datasource/remote/posdata_signin.dart';

class SigninController extends GetxController {
  PostDataSignin postDataSignup = PostDataSignin(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  AppServices appServices = Get.find();
  signin(String email, String password) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await postDataSignup.postDataSignin(email, password);
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;
        Get.defaultDialog(
          title: "error",
          middleText: "invalid details",
        );
      } else {
        // FirebaseMessaging.instance.getToken().then((value) {
        //   String? token = value;
        //   print("========$token");
        // });
        Get.toNamed(kHomeView);
      }
      appServices.sharedPreferences
          .setString("id", response['data']['users_id']);
      appServices.sharedPreferences
          .setString("username", response['data']['users_name']);
      appServices.sharedPreferences
          .setString("email", response['data']['users_name']);
      appServices.sharedPreferences
          .setString("phone", response['data']['users_phone']);
      appServices.sharedPreferences.setString("step", "2");
      update();
    } else {}
  }
}

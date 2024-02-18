import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

import '../../core/class/statuscode.dart';
import '../../core/functions/handling _data.dart';
import '../../data/datasource/remote/posdata_signin.dart';

class SigninController extends GetxController {
  PostDataSignin postDataSignup = PostDataSignin(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
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
        FirebaseMessaging.instance.getToken().then((value) {
          String? token = value;
          print(token);
        });
        print("========== 1");
        Get.toNamed(kSignup);
      }
      update();
    } else {}
  }
}

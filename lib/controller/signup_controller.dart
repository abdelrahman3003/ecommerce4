import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:get/get.dart';

import '../core/class/statuscode.dart';
import '../core/functions/handling _data.dart';
import '../data/datasource/remote/postdata_signup.dart';

class SignupController extends GetxController {
  PostDataSignup postDataSignup = PostDataSignup(Get.find());
  late StatusRequest statusRequest;
  List data = [];

  signup(String username, String email, String phone, String password) async {
    statusRequest = StatusRequest.loading;
    var response =
        await postDataSignup.postDataSignup(username, email, phone, password);
    statusRequest = handlingApiData(response);
    print("============ 1 ${response}");
    if (statusRequest == StatusRequest.success) {
      print("============ 2");
      if (response["status"] == "failure") {
        print("============ 3");
        statusRequest = StatusRequest.failure;
        Get.defaultDialog(
          title: "Warrning",
          middleText: "Phone or Email is aleady found",
        );
      } else {
        print("============ 4");
        Get.toNamed(kCheckEmail);
      }
    }

    update();
  }
}

import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:get/get.dart';

import '../../core/class/statuscode.dart';
import '../../core/functions/handling _data.dart';
import '../../data/datasource/remote/verify_Code.dart';
import '../forget_password_controller.dart';

class VerifyCodeController extends GetxController {
  GetVerifyCode getVerifyCode = GetVerifyCode(Get.find());
  ForgetPasssowrdController forgetPasssowrdController =
      ForgetPasssowrdController();
  StatusRequest? statusRequest;
  String? email;
  verifycode(String verifyCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await getVerifyCode.gettVerifyCode(email!, verifyCode);
    statusRequest = handlingApiData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;
        Get.defaultDialog(
          title: "error",
          middleText: "Verify code failed",
        );
      } else {
        if (forgetPasssowrdController.isforegetpassword) {
          Get.toNamed(kVerifyCode);
        } else {
          Get.toNamed(kSignupSucess);
        }
      }
      update();
    } else {}
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    email = Get.arguments['email'];
  }
}

import 'package:get/get.dart';

import '../core/class/crud.dart';
import '../core/constant/backlinks.dart';
import '../core/constant/routsApp.dart';

class SignupController extends GetxController {
  Crud crud = Crud();
  signup(String username, String email, String phone, String password) async {
    var response = await crud.postRequset(signupNameLink, {
      "username": username,
      "email": email,
      "phone": phone,
      "password": password,
    });

    if (response['Status'] == 'Success') {
      Get.toNamed(kCheckEmail);

      print("success=======");
    } else {
      print("signup fail");
    }
  }
}

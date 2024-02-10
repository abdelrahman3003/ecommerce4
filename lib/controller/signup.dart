import 'package:eccommerce4/core/class/crud.dart';
import 'package:eccommerce4/core/constant/backlinks.dart';
import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:get/get.dart';

class Signup extends GetxController {
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
    } else {
      print("signup fail");
    }
  }
}

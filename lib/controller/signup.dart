import 'dart:io';

import 'package:get/get.dart';

import '../core/class/crud.dart';
import '../core/constant/backlinks.dart';
import '../core/constant/routsApp.dart';

class SignupController extends GetxController {
  Crud crud = Crud();
  signup(String username, String email, String phone, String password,
      File file) async {
    try {
      var response = await crud.postRequsetWithFile(
          signupNameLink,
          {
            "username": username,
            "email": email,
            "phone": phone,
            "password": password,
          },
          file);
      if (response['Status'] == 'Success') {
        Get.toNamed(kCheckEmail);
      } else {
        print("signup fail");
      }
    } catch (e) {
      print(e);
    }
  }
}

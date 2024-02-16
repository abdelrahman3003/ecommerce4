import 'package:eccommerce4/controller/forget_password_controller.dart';
import 'package:eccommerce4/core/class/statuscode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/auth/verify_code.dart';
import '../../core/constant/routsApp.dart';
import '../../core/shared/styles.dart';
import 'widgets/verify/Verify_body.dart';

class VerifyCode extends GetView<ForgetPasssowrdController> {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeController());
    return Scaffold(
        body: GetBuilder<VerifyCodeController>(
      builder: (verifycodecontroller) => verifycodecontroller.statusRequest ==
              StatusRequest.loading
          ? Text(
              "loading",
              style: Styles.textStyle18.copyWith(color: Colors.black),
            )
          : VerfiyBody(
              titlebold: "Check code",
              title: "Verification code",
              subtitle: "please enter your code sent to your email ",
              toPage:
                  controller.isforegetpassword ? kRestPassword : kSignupSucess),
    ));
  }
}

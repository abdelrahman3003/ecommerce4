import 'package:eccommerce4/controller/auth/check_email_controller.dart';
import 'package:eccommerce4/controller/forget_password_controller.dart';
import 'package:eccommerce4/core/class/statuscode.dart';
import 'package:eccommerce4/view/auth/widgets/check/check_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/shared/styles.dart';

class CheckEmail extends GetView<ForgetPasssowrdController> {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CheckEmailController());
    return Scaffold(
        body: GetBuilder<CheckEmailController>(
      builder: (checkcontroller) =>
          checkcontroller.statusRequest == StatusRequest.loading
              ? Center(
                  child: Text(
                    "loading",
                    style: Styles.textStyle18.copyWith(color: Colors.black),
                  ),
                )
              : CheckBody(
                  title: "Check Email",
                  subtitle:
                      "please enter your email address to recieve a verification code",
                  titlebold: controller.isforegetpassword
                      ? "Rest password"
                      : "Create account",
                ),
    ));
  }
}

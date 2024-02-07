import 'package:eccommerce4/controller/forget_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routsApp.dart';
import 'widgets/verify/Verify_body.dart';

class VerifyCode extends GetView<ForgetPasssowrdController> {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VerfiyBody(
          titlebold: "Check code",
          title: "Verification code",
          subtitle:
              "please enter your email address to recieve a verification ",
          toPage: controller.isforegetpassword ? kSignupSucess : kRestPassword),
    );
  }
}

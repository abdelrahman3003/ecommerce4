import 'package:eccommerce4/controller/forget_password_controller.dart';
import 'package:eccommerce4/view/auth/widgets/check/check_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmail extends GetView<ForgetPasssowrdController> {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CheckBody(
        title: "Check Email",
        subtitle:
            "please enter your email address to recieve a verification code",
        titlebold:
            controller.isforegetpassword ? "Rest password" : "Create account",
      ),
    );
  }
}

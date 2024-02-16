import 'package:eccommerce4/controller/auth/signin_controller.dart';
import 'package:eccommerce4/core/class/statuscode.dart';
import 'package:eccommerce4/core/functions/alert_exit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/shared/styles.dart';
import 'widgets/signin/signin_body.dart';

class Signin extends GetView<SigninController> {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SigninController());
    return Scaffold(
        body: WillPopScope(
      onWillPop: alertExitApp,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: controller.statusRequest == StatusRequest.loading
            ? Center(
                child: Text(
                  "loading",
                  style: Styles.textStyle18.copyWith(color: Colors.black),
                ),
              )
            : const SigninBody(),
      ),
    ));
  }
}

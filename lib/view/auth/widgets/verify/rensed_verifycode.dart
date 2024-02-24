import 'package:eccommerce4/controller/auth/verify_code.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResnedVerifyCode extends GetView<VerifyCodeController> {
  const ResnedVerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          controller.resendVerfyCode();
        },
        child: const Text(
          "resend",
          style: Styles.textStyle18,
        ));
  }
}

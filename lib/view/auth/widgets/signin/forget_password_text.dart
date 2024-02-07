import 'package:eccommerce4/controller/forget_password_controller.dart';
import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/shared/styles.dart';

class ForgetPasswordText extends StatelessWidget {
  const ForgetPasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ForgetPasssowrdController());
    return GestureDetector(
      onTap: () {
        Get.toNamed(kCheckEmail);
        controller.isforegetpassword = true;
      },
      child: const Opacity(
          opacity: .6,
          child: Text("Forget password", style: Styles.textStyle16)),
    );
  }
}

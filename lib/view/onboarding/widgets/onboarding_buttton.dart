import 'package:eccommerce4/controller/onboarding_controller.dart';
import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:eccommerce4/core/shared/widgets/buttons/Button1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImp>(
      builder: (controller) => Button1(
        onPressed: () {
          controller.next();
          if (controller.isfinish) {
            Get.offAllNamed(kSignin);
          }
        },
        text: controller.isfinish
            ? "onbordingButtonFinshed".tr
            : "onbordingButton".tr,
      ),
    );
  }
}

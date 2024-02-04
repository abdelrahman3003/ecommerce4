import 'package:eccommerce4/controller/onboarding_controller.dart';
import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:eccommerce4/core/shared/widgets/buttons/Button1.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

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
              text: controller.isfinish ? "Get Start" : "Continue",
            ));
  }
}

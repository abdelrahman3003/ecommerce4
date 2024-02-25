import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/shared/widgets/buttons/onboarding_Button.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingButton(
      width: Get.width,
      text: "Order",
      onPressed: () {},
    );
  }
}

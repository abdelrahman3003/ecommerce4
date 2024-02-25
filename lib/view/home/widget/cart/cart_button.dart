import 'package:eccommerce4/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/shared/widgets/buttons/onboarding_Button.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: OnboardingButton(
        color: ColorsApp.kprimaryColor1,
        width: Get.width,
        text: "Order",
        onPressed: () {},
      ),
    );
  }
}

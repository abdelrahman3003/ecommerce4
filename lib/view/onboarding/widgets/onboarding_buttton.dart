import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/shared/widgets/customButton.dart';
import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButtom(
      backgroundcolor: ColorsApp.kprimaryColor1,
      textcolor: Colors.white,
      borderRadius: BorderRadius.circular(20),
      text: "Continue",
      onPressed: () {},
    );
  }
}

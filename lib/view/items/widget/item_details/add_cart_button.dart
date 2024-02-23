import 'package:eccommerce4/core/shared/widgets/buttons/onboarding_Button.dart';
import 'package:flutter/material.dart';

class AddCartButton extends StatelessWidget {
  const AddCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingButton(
      text: "Add To Cart",
      onPressed: () {},
      width: double.infinity,
      borderRadius: 10,
    );
  }
}

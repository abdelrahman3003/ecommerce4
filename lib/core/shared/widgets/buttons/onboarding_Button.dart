import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final Function()? onPressed;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
        onPressed: onPressed,
        color: ColorsApp.kprimaryColor1,
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

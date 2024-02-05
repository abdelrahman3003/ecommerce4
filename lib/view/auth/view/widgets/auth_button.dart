import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/shared/widgets/buttons/auth_button.dart';
import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return AuthButton(
        backgroundcolor: ColorsApp.kprimaryColor1,
        textcolor: Colors.white,
        text: text,
        width: 120,
        borderRadius: BorderRadius.circular(30),
        onPressed: onPressed);
  }
}

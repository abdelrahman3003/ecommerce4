import 'package:eccommerce4/view/auth/widgets/verify/Verify_body.dart';
import 'package:flutter/material.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: VerfiyBody(
          titlebold: "Check code",
          title: "Verification code",
          subtitle:
              "please enter your email address to recieve a verification "),
    );
  }
}

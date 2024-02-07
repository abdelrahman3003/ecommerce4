import 'package:eccommerce4/view/auth/widgets/check/check_body.dart';
import 'package:flutter/material.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CheckBody(
        title: "Check Email",
        subtitle: "please enter your email address to recieve a verification ",
        titlebold: "Account succefully created",
      ),
    );
  }
}

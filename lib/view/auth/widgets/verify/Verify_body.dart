import 'package:eccommerce4/view/auth/widgets/verify/otp_textfield.dart';
import 'package:flutter/material.dart';
import '../textsection.dart';

class VerfiyBody extends StatelessWidget {
  const VerfiyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(height: 30),
          TextsSections(title: "Verification Code"),
          SizedBox(height: 20),
          TextsSections(
              titlebold: "Check code ",
              subtitle:
                  "Please enter the right code sent to abdelrahman@gmail.com"),
          AppOtpTextField(),
        ],
      ),
    );
  }
}

import 'package:eccommerce4/view/auth/widgets/verify/otp_textfield.dart';
import 'package:flutter/material.dart';
import '../textsection.dart';

class VerfiyBody extends StatelessWidget {
  const VerfiyBody(
      {super.key, this.titlebold = "", this.title = "", this.subtitle = ""});
  final String titlebold;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(height: 30),
          TextsSections(title: title),
          const SizedBox(height: 20),
          TextsSections(titlebold: titlebold, subtitle: subtitle),
          const AppOtpTextField(),
        ],
      ),
    );
  }
}

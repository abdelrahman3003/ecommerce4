import 'package:eccommerce4/view/auth/widgets/forgetpassword/forget_password_form.dart';
import 'package:flutter/material.dart';
import '../textsection.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(height: 30),
          TextsSections(
              title: "Check Email!", subtitle: " to verify  your account"),
          ForgetpasswordForm(),
        ],
      ),
    );
  }
}

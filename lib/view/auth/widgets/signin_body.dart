import 'package:eccommerce4/view/auth/widgets/dividertext.dart';
import 'package:eccommerce4/view/auth/widgets/icons.dart';
import 'package:eccommerce4/view/auth/widgets/loginsectionfeild.dart';
import 'package:eccommerce4/view/auth/widgets/logo.dart';
import 'package:eccommerce4/view/auth/widgets/signup_naviagte.dart';
import 'package:eccommerce4/view/auth/widgets/textsection.dart';
import 'package:flutter/material.dart';

class SigninBody extends StatelessWidget {
  const SigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 100),
          Logo(),
          SizedBox(height: 20),
          TextsSections(title: "Welcome back!", subtitle: "Login your account"),
          SizedBox(height: 25),
          LoginSectionFields(),
          SizedBox(height: 20),
          DividerText(),
          IconsMeida(),
          SizedBox(height: 30),
          SignupNavigate(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

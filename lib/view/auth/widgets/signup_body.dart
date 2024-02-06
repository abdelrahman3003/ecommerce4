import 'package:eccommerce4/view/auth/widgets/dividertext.dart';
import 'package:eccommerce4/view/auth/widgets/icons.dart';
import 'package:eccommerce4/view/auth/widgets/logo.dart';
import 'package:eccommerce4/view/auth/widgets/signin_navigate.dart';
import 'package:eccommerce4/view/auth/widgets/signup_section_feild.dart';
import 'package:eccommerce4/view/auth/widgets/textsection.dart';
import 'package:flutter/material.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 100),
          Logo(),
          SizedBox(height: 25),
          TextsSections(title: "Welcome!", subtitle: "Create your account"),
          SizedBox(height: 25),
          SignupSectionFields(),
          SizedBox(height: 20),
          DividerText(),
          IconsMeida(),
          SizedBox(height: 30),
          SigninNavigate(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

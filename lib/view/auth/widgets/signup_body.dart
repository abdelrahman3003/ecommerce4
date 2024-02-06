import 'package:flutter/material.dart';

import 'dividertext.dart';
import 'icons.dart';
import 'logo.dart';
import 'signin_navigate.dart';
import 'signup_section_feild.dart';
import 'textsection.dart';

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

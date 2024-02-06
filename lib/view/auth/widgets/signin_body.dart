import 'package:flutter/material.dart';

import 'dividertext.dart';
import 'icons.dart';
import 'loginsectionfeild.dart';
import '../../../core/shared/widgets/logo.dart';
import 'signin/signup_naviagte.dart';
import 'textsection.dart';

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

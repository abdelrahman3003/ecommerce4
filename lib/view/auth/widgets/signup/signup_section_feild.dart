import 'package:eccommerce4/view/auth/widgets/signup/check_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/shared/widgets/buttons/onboarding_Button.dart';
import '../authfield.dart';

class SignupSectionFields extends StatefulWidget {
  const SignupSectionFields({
    super.key,
  });

  @override
  State<SignupSectionFields> createState() => _SignupSectionFieldsState();
}

class _SignupSectionFieldsState extends State<SignupSectionFields> {
  late String username;
  late String email;
  late String password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AuthField(
            icon: Icons.person,
            text: "Username",
            onsave: (value) {
              username = value!;
            },
          ),
          const SizedBox(height: 20),
          AuthField(
            icon: Icons.email,
            text: "Email",
            onsave: (value) {
              email = value!;
            },
          ),
          const SizedBox(height: 20),
          AuthField(
            icon: Icons.password,
            text: "Password",
            onsave: (value) {
              password = value!;
            },
          ),
          const SizedBox(height: 20),
          OnboardingButton(
              onPressed: () {
                Get.to(const CheckEmail());
              },
              text: "Signup"),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

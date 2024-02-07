import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/routsApp.dart';
import '../../../../core/functions/validation.dart';
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
            validator: (val) {
              return validation(type: "Username", val: val!);
            },
          ),
          const SizedBox(height: 20),
          AuthField(
            icon: Icons.email,
            text: "Email",
            onsave: (value) {
              email = value!;
            },
            validator: (val) {
              return validation(type: "Email", val: val!);
            },
          ),
          const SizedBox(height: 20),
          AuthField(
            icon: Icons.password,
            text: "Password",
            onsave: (value) {
              password = value!;
            },
            validator: (val) {
              return validation(type: "Password", val: val!);
            },
          ),
          const SizedBox(height: 20),
          OnboardingButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Get.toNamed(kVerifyCode);
                }
              },
              text: "Signup"),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

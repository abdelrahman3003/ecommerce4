import 'package:flutter/material.dart';

import '../../../../core/functions/validation.dart';
import '../../../../core/shared/widgets/buttons/onboarding_Button.dart';
import '../authfield.dart';
import 'forget_password_text.dart';

class LoginSectionFields extends StatefulWidget {
  const LoginSectionFields({
    super.key,
  });

  @override
  State<LoginSectionFields> createState() => _LoginSectionFieldsState();
}

class _LoginSectionFieldsState extends State<LoginSectionFields> {
  late String email;
  late String password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        AuthField(
            onsave: (value) {
              email = value!;
            },
            validator: (val) {
              return validation(type: "Email", val: val!);
            },
            icon: Icons.email,
            text: "Email"),
        const SizedBox(height: 20),
        AuthField(
            onsave: (value) {
              password = value!;
            },
            validator: (val) {
              return validation(type: "Password", val: val!);
            },
            icon: Icons.password,
            text: "Password"),
        const SizedBox(height: 30),
        const Align(
          alignment: Alignment.bottomLeft,
          child: ForgetPasswordText(),
        ),
        const SizedBox(height: 10),
        OnboardingButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
            }
          },
          text: "Login",
        ),
        const SizedBox(height: 20),
      ]),
    );
  }
}

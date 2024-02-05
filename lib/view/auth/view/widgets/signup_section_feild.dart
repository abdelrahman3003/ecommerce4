import 'package:eccommerce4/core/shared/styles.dart';
import 'package:eccommerce4/view/auth/view/widgets/auth_button.dart';
import 'package:eccommerce4/view/auth/view/widgets/authfield.dart';
import 'package:flutter/material.dart';

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
          CustomAuthButton(onPressed: () async {}, text: "Signup"),
          const SizedBox(height: 10),
          Text(
            "text",
            style: Styles.textStyle16.copyWith(color: Colors.red),
          )
        ],
      ),
    );
  }
}

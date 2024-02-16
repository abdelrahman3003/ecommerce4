import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/functions/validation.dart';
import '../../../../core/shared/widgets/buttons/onboarding_Button.dart';
import '../authfield.dart';

class CheckForm extends StatefulWidget {
  const CheckForm({
    super.key,
  });

  @override
  State<CheckForm> createState() => _CheckFormState();
}

class _CheckFormState extends State<CheckForm> {
  String? email;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        const SizedBox(height: 10),
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
        const SizedBox(height: 25),
        OnboardingButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              Get.toNamed(kVerifyCode, arguments: {'email': email});
            }
          },
          text: "Check Email",
        ),
      ]),
    );
  }
}

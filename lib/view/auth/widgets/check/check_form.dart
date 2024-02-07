import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
  late String email;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        const SizedBox(height: 10),
        AuthField(
            onsave: (value) {
              email = value!;
            },
            icon: Icons.email,
            text: "Email"),
        const SizedBox(height: 25),
        OnboardingButton(
          onPressed: () {
            Get.toNamed(kVerify);
          },
          text: "Check Email",
        ),
      ]),
    );
  }
}

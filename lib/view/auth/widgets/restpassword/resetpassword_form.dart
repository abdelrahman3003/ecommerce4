import 'package:flutter/material.dart';
import '../../../../core/shared/widgets/buttons/onboarding_Button.dart';
import '../authfield.dart';

class RestpasswordForm extends StatefulWidget {
  const RestpasswordForm({
    super.key,
  });

  @override
  State<RestpasswordForm> createState() => _ForgetpasswordFormState();
}

class _ForgetpasswordFormState extends State<RestpasswordForm> {
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
            icon: Icons.password,
            text: "New password"),
        const SizedBox(height: 10),
        AuthField(
            onsave: (value) {
              email = value!;
            },
            icon: Icons.password,
            text: "Re type password"),
        const SizedBox(height: 25),
        OnboardingButton(
          onPressed: () {},
          text: "Confirm",
        ),
      ]),
    );
  }
}

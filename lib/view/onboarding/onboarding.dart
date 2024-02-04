import 'package:eccommerce4/view/onboarding/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OnboardingBody(),
      ),
    );
  }
}

import 'package:eccommerce4/view/onboarding/widgets/custom_onboarding_buttton.dart';
import 'package:eccommerce4/view/onboarding/widgets/pageview_onboard.dart';
import 'package:eccommerce4/view/onboarding/widgets/spotes.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: PageViewOnboarding()),
        Spotes(),
        Padding(
          padding: EdgeInsets.only(top: 150),
          child: CustomOnboardingButton(),
        ),
        SizedBox(height: 50),
      ],
    );
  }
}

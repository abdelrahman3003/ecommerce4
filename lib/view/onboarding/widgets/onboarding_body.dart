import 'package:eccommerce4/view/onboarding/widgets/onboarding_buttton.dart';
import 'package:eccommerce4/view/onboarding/widgets/pageview_onboard.dart';
import 'package:eccommerce4/view/onboarding/widgets/spotes.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * .8,
              child: const PageViewOnboarding()),
          const Spotes(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.all(15),
            child: OnboardingButton(),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

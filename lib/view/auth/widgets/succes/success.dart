import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:eccommerce4/core/shared/widgets/buttons/onboarding_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Success extends StatelessWidget {
  const Success(
      {super.key, this.successtext = "", this.title = "", this.subtitle = ""});
  final String successtext;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: Get.height * .06),
          Opacity(
            opacity: .4,
            child: Text(
              successtext,
              style: Styles.textStyle30,
            ),
          ),
          const SizedBox(height: 30),
          const Center(
            child: Icon(
              Icons.check_circle_outline,
              size: 200,
              color: ColorsApp.kprimaryColor1,
            ),
          ),
          const SizedBox(height: 10),
          Opacity(
            opacity: 1,
            child: Text(
              title,
              style: Styles.textStyle30,
            ),
          ),
          const SizedBox(height: 5),
          Opacity(
            opacity: .4,
            child: Text(
              subtitle,
              style: Styles.textStyle18,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: OnboardingButton(
                text: "Signin",
                width: double.infinity,
                onPressed: () {
                  Get.offNamed(kSignin);
                }),
          ),
          SizedBox(height: Get.height * .04)
        ],
      ),
    );
  }
}

import 'package:eccommerce4/controller/onboarding_controller.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:eccommerce4/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PageViewOnboarding extends StatelessWidget {
  const PageViewOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<OnboardingControllerImp>(
      builder: (controller) {
        return PageView.builder(
          onPageChanged: (val) {
            controller.pageInchanged(val);
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return Column(
              children: [
                const SizedBox(height: 30),
                Text(
                  onboardingmodeList[index].title,
                  style: Styles.textStyle25.copyWith(color: Colors.black),
                ),
                const SizedBox(height: 100),
                SizedBox(
                  height: 200,
                  width: width * .9,
                  child: Image.asset(onboardingmodeList[index].image),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Opacity(
                    opacity: .5,
                    child: Text(
                      textAlign: TextAlign.center,
                      onboardingmodeList[index].subtitle,
                      style: Styles.textStyle18,
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

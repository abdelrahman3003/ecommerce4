import 'package:eccommerce4/core/shared/styles.dart';
import 'package:eccommerce4/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class PageViewOnboarding extends StatelessWidget {
  const PageViewOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return PageView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const SizedBox(height: 150),
            SizedBox(
              height: 200,
              width: width * .9,
              child: Image.asset(onboardingmodeList[index].image),
            ),
            Text(
              onboardingmodeList[index].title,
              style: Styles.textStyle25,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Opacity(
                opacity: .4,
                child: Text(
                  textAlign: TextAlign.center,
                  onboardingmodeList[index].subtitle,
                  style: Styles.textStyle16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

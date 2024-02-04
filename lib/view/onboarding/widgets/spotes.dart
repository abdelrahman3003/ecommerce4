import 'package:eccommerce4/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class Spotes extends StatelessWidget {
  const Spotes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7,
      width: 80,
      child: ListView.builder(
        itemCount: onboardingmodeList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Container(
              margin: const EdgeInsets.only(left: 5),
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          );
        },
      ),
    );
  }
}

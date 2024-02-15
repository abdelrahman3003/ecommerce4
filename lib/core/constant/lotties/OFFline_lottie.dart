import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OFFline extends StatelessWidget {
  const OFFline({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: 220,
            width: 200,
            child: Lottie.asset("assets/lotties/ofline.json")),
        Text("There was an server error , pleas try later",
            style: Styles.textStyle20.copyWith(color: Colors.black)),
      ],
    );
  }
}

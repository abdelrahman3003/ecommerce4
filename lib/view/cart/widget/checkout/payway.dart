import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';

class PayWay extends StatelessWidget {
  const PayWay({super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      width: double.infinity,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(30)),
      child: Text(text,
          style: Styles.textStyle18.copyWith(
              color: color == ColorsApp.kprimaryColor1
                  ? Colors.white
                  : ColorsApp.kprimaryColor1,
              fontWeight: FontWeight.bold)),
    );
  }
}

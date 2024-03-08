import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/constant/constatns_value.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DeliveryType extends StatelessWidget {
  const DeliveryType({super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 6,
      width: Get.width / 2.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kborderradius), color: color),
      child: Column(
        children: [
          Icon(
              color == ColorsApp.kprimaryColor1
                  ? Icons.delivery_dining
                  : Icons.call_received,
              size: 100,
              color: color == ColorsApp.kprimaryColor1
                  ? Colors.white
                  : ColorsApp.kprimaryColor1),
          Text(
            "Delivery",
            style: Styles.textStyle18.copyWith(
                color: color == ColorsApp.kprimaryColor1
                    ? Colors.white
                    : ColorsApp.kprimaryColor1),
          )
        ],
      ),
    );
  }
}

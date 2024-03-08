import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/constant/constatns_value.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeliveryType extends StatelessWidget {
  const DeliveryType({super.key, required this.text, required this.isActive});
  final String text;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 6,
      width: Get.width / 2.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kborderradius),
          color: isActive ? ColorsApp.kprimaryColor1 : Colors.white,
          border: Border.all(color: ColorsApp.kprimaryColor1)),
      child: Column(
        children: [
          Icon(
              isActive
                  ? Icons.delivery_dining
                  : Icons.drive_file_rename_outline,
              size: 100,
              color: isActive ? Colors.white : ColorsApp.kprimaryColor1),
          Text(
            text,
            style: Styles.textStyle18.copyWith(
                color: isActive ? Colors.white : ColorsApp.kprimaryColor1),
          )
        ],
      ),
    );
  }
}

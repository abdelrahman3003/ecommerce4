import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/constatns_value.dart';

class Shoppingaddress extends StatelessWidget {
  const Shoppingaddress(
      {super.key,
      required this.color,
      required this.address,
      required this.subaddress});
  final Color color;
  final String address;
  final String subaddress;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: Get.height / 9,
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kborderradius),
            color: color,
            border: Border.all(color: ColorsApp.kprimaryColor1)),
        child: ListTile(
          title: Text(address,
              style: Styles.textStyle25.copyWith(
                  color: color == ColorsApp.kprimaryColor1
                      ? Colors.white
                      : ColorsApp.kprimaryColor1,
                  fontWeight: FontWeight.bold)),
          subtitle: Text(subaddress,
              style: Styles.textStyle20.copyWith(
                  color: color == ColorsApp.kprimaryColor1
                      ? Colors.white
                      : ColorsApp.kprimaryColor1,
                  fontWeight: FontWeight.bold)),
        ));
  }
}

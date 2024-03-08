import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';

import 'delivery_type.dart';
import 'payway.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Choose your pay way",
            style:
                Styles.textStyle25.copyWith(color: ColorsApp.kprimaryColor1)),
        const SizedBox(height: 12),
        const PayWay(text: "Cash On delivery", color: ColorsApp.kprimaryColor1),
        const SizedBox(height: 12),
        const PayWay(text: "Cash On delivery", color: ColorsApp.kprimaryColor2),
        const SizedBox(height: 12),
        Text("Choose delivery type ",
            style:
                Styles.textStyle25.copyWith(color: ColorsApp.kprimaryColor1)),
        const Row(
          children: [
            DeliveryType(
              color: ColorsApp.kprimaryColor1,
              text: "Delivery",
            ),
            SizedBox(width: 12),
            DeliveryType(
              color: ColorsApp.kprimaryColor2,
              text: "Rcivee",
            ),
          ],
        )
      ],
    );
  }
}

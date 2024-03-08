import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';

import '../cart/appbar_cart.dart';
import 'address.dart';
import 'delivery_type.dart';
import 'payway.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppbarCart(title: "CheckOut"),
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
              color: Colors.white,
              text: "Rcivee",
            ),
          ],
        ),
        Text("shipping address ",
            style:
                Styles.textStyle25.copyWith(color: ColorsApp.kprimaryColor1)),
        const Shoppingaddress(
          color: ColorsApp.kprimaryColor1,
          address: "Home",
          subaddress: "qena , dishna",
        ),
        const SizedBox(height: 12),
        const Shoppingaddress(
          color: Colors.white,
          address: "Campany",
          subaddress: "Cairo , ain shams",
        ),
      ],
    );
  }
}

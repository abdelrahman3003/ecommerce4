import 'package:flutter/material.dart';

import '../../../../../../cart/widget/cart/custom_abbpar.dart';
import 'card_order_details.dart';

class OrederDetailsViewBody extends StatelessWidget {
  const OrederDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAbbpar(title: "Order Details"),
        SizedBox(height: 20),
        CardOrderDetails()
      ],
    );
  }
}

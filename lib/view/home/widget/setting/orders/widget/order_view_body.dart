import 'package:flutter/material.dart';

import '../../../../../cart/widget/cart/custom_abbpar.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAbbpar(title: "Orders"),
      ],
    );
  }
}

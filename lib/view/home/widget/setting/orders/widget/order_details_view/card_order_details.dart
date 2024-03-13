import 'package:flutter/material.dart';

import 'order_row_details.dart';

class CardOrderDetails extends StatelessWidget {
  const CardOrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            OrderDetailsRow(item: "Item", qty: "QTY", price: "Price"),
            Opacity(
                opacity: .6,
                child: OrderDetailsRow(
                    item: "iphone", qty: "12", price: "150 \$")),
          ],
        ),
      ),
    );
  }
}

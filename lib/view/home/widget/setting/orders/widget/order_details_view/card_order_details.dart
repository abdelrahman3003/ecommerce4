import 'package:flutter/material.dart';

import 'order_detail_list.dart';
import 'order_row_details.dart';
import 'totalprice.dart';

class CardOrderDetails extends StatelessWidget {
  const CardOrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [
          OrderDetailsRow(item: "Item", qty: "QTY", price: "Price"),
          Expanded(child: OrderDetailsList()),
          TotalPrice(totalPrice: "2000 \$")
        ],
      ),
    );
  }
}

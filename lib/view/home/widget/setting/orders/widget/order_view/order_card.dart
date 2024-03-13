import 'package:flutter/material.dart';

import 'details_button.dart';
import 'text_item.dart';

class OrderCard extends StatelessWidget {
  const OrderCard(
      {super.key,
      required this.ordernumber,
      required this.orderType,
      required this.orderPrice,
      required this.paymentMethod,
      required this.orderStatus,
      required this.totalPrice,
      required this.deliveryprice,
      required this.orderdate});
  final String orderType;
  final String ordernumber;
  final String orderdate;
  final String orderPrice;
  final String deliveryprice;
  final String paymentMethod;
  final String orderStatus;
  final String totalPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextItem(tilte: "Order Number", subtilte: " $ordernumber"),
        TextItem(tilte: "Order date", subtilte: " $orderdate"),
        TextItem(tilte: "Order Type ", subtilte: " $orderType"),
        TextItem(tilte: "Order Price", subtilte: " $orderPrice \$"),
        orderType == "Receive"
            ? const SizedBox()
            : TextItem(tilte: "Delivery Price", subtilte: " $deliveryprice \$"),
        TextItem(tilte: "Payment Method ", subtilte: " $paymentMethod"),
        TextItem(tilte: "Order Status", subtilte: " $orderStatus"),
        const SizedBox(height: 15),
        DetailsButton(totlaPrice: totalPrice),
        const SizedBox(height: 5),
        const Divider(color: Colors.grey, thickness: 1.5),
      ]),
    );
  }
}

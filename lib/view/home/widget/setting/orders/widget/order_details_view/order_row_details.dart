import 'package:flutter/material.dart';

import '../../../../../../../core/shared/styles.dart';

class OrderDetailsRow extends StatelessWidget {
  const OrderDetailsRow(
      {super.key, required this.item, required this.qty, required this.price});
  final String item;
  final String qty;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(item,
              style: Styles.textStyle20black
                  .copyWith(fontWeight: FontWeight.bold)),
          Text(qty,
              style: Styles.textStyle20black
                  .copyWith(fontWeight: FontWeight.bold)),
          Text(price,
              style: Styles.textStyle20black
                  .copyWith(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

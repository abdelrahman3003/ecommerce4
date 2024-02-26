import 'package:flutter/material.dart';

import 'subitem.dart';

class SubitemsList extends StatelessWidget {
  const SubitemsList(
      {super.key,
      required this.price,
      required this.shopping,
      required this.totalprice});
  final String price;
  final String shopping;
  final String totalprice;
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 110,
        child: Column(
          children: [
            Subitem(title: "Price", subTilte: "\$2000"),
            Subitem(title: "Shopping", subTilte: "\$2000"),
            Subitem(title: "Total Price", subTilte: "\$2000"),
          ],
        ));
  }
}

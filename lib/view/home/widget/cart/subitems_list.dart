import 'package:flutter/material.dart';

import 'subitem.dart';

class SubitemsList extends StatelessWidget {
  const SubitemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 150,
        child: Column(
          children: [
            Subitem(title: "Price", subTilte: "\$2000"),
            Subitem(title: "Shopping", subTilte: "\$2000"),
            Subitem(title: "Total Price", subTilte: "\$2000"),
          ],
        ));
  }
}

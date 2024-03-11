import 'package:flutter/material.dart';

import '../../../../../../core/shared/styles.dart';

class TextItem extends StatelessWidget {
  const TextItem({super.key, required this.tilte, required this.subtilte});
  final String tilte;
  final String subtilte;
  @override
  Widget build(BuildContext context) {
    return Text("$tilte : $subtilte ",
        style: Styles.textStyle25black.copyWith(
            fontSize: tilte == "Order Number" ? 25 : 20,
            fontWeight:
                tilte == "Order Number" ? FontWeight.bold : FontWeight.normal));
  }
}

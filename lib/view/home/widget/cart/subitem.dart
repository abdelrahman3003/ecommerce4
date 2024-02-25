import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';

class Subitem extends StatelessWidget {
  const Subitem({super.key, required this.title, required this.subTilte});
  final String title;
  final String subTilte;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(title, style: Styles.textStyle25black)),
        Text(subTilte, style: Styles.textStyle20black),
      ],
    );
  }
}

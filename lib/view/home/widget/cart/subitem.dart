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
        Expanded(
            child: Text(title,
                style: Styles.textStyle25black.copyWith(
                    fontWeight: title == "Total Price"
                        ? FontWeight.bold
                        : FontWeight.normal))),
        Text(subTilte,
            style: Styles.textStyle20black.copyWith(
              fontWeight:
                  title == "Total Price" ? FontWeight.bold : FontWeight.normal,
            )),
      ],
    );
  }
}

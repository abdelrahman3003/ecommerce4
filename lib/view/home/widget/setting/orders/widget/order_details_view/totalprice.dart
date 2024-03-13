import 'package:flutter/material.dart';

import '../../../../../../../core/shared/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.totalPrice});
  final String totalPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Total Price  :  ",
            style:
                Styles.textStyle20black.copyWith(fontWeight: FontWeight.bold)),
        Opacity(
          opacity: .6,
          child: Text(totalPrice,
              style: Styles.textStyle20black
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}

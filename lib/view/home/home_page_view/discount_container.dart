import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';

class DiscountContainer extends StatelessWidget {
  const DiscountContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 165,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(20)),
      child: Stack(children: [
        Positioned(
          right: -20,
          top: -20,
          child: Container(
            width: 170,
            height: 170,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 179, 52, 43),
                borderRadius: BorderRadius.circular(150)),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: const ListTile(
            title: Text(
              "A summer surprise",
              style: Styles.textStyle20,
            ),
            subtitle: Text(
              "Cashbacck %20",
              style: Styles.textStyle30,
            ),
          ),
        )
      ]),
    );
  }
}

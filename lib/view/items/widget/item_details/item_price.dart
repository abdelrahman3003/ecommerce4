import 'package:eccommerce4/core/constant/colors.dart';
import 'package:flutter/material.dart';

class ItemPrice extends StatelessWidget {
  const ItemPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
            Opacity(
              opacity: .7,
              child: Container(
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: ColorsApp.kprimaryColor2,
                    width: 3,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.remove,
                color: Colors.black,
              ),
            ),
          ],
        )
      ],
    );
  }
}

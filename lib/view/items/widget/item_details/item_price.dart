import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';

class ItemPrice extends StatelessWidget {
  const ItemPrice({super.key, required this.price});
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
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
          ),
        ),
        Text(
          "\$ $price",
          style: Styles.textStyle25.copyWith(color: Colors.red),
        )
      ],
    );
  }
}

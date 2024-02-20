import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key, required this.itemImage});
  final String itemImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Container(
            height: 160,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(30),
            ),
            child: SvgPicture.network(itemImage),
          ),
        ],
      ),
    );
  }
}

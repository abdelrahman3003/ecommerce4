import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key, required this.itemImage});
  final String itemImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: Get.height / 7,
          width: Get.width / 2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: CachedNetworkImage(
            imageUrl: itemImage,
          ),
        ),
      ),
    );
  }
}

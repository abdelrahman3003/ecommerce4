import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccommerce4/core/constant/backlinks.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageBackground extends StatelessWidget {
  const ImageBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 250,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(40))),
        ),
        Positioned(
          top: 50,
          right: Get.width / 8,
          left: Get.width / 8,
          child: Hero(
            tag: "laptop.png",
            child:
                CachedNetworkImage(imageUrl: "$itemsImageNameLink/laptop.png"),
          ),
        )
      ],
    );
  }
}

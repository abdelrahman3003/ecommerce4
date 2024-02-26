import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/items/item_details_controller.dart';

class CartItem extends GetView<ItemsDetailsControllerImp> {
  const CartItem({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.count,
  });
  final String image;
  final String title;
  final String price;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.fill,
          ),
        ),
        // Container(
        //   width: 160,
        //   height: 140,
        //   decoration: BoxDecoration(
        //       color: ColorsApp.kprimaryColor1,
        //       borderRadius: BorderRadius.circular(kborderradius)),
        // ),
        Expanded(
          child: ListTile(
            title: Text(title,
                style: Styles.textStyle20.copyWith(color: Colors.black)),
            subtitle: Opacity(
              opacity: .6,
              child: Text(price,
                  style: Styles.textStyle18.copyWith(color: Colors.black)),
            ),
          ),
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
            Text("$count",
                style: Styles.textStyle25
                    .copyWith(color: ColorsApp.kprimaryColor1)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove),
            ),
          ],
        )
      ],
    );
  }
}

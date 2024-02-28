import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/cart/cart_controller.dart';
import '../../../../core/constant/backlinks.dart';

class CartItem extends GetView<CartControllerImp> {
  const CartItem({
    super.key,
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.count,
  });
  final String image;
  final int id;
  final String title;
  final String price;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: CachedNetworkImage(
                imageUrl: "$itemsImageNameLink/$image",
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
                  child: Text("\$ $price",
                      style: Styles.textStyle18.copyWith(color: Colors.red)),
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
        ),
        const Divider(
          color: Colors.grey,
        ),
      ],
    );
  }
}

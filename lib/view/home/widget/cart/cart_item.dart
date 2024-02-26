import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/items/item_details_controller.dart';
import '../../../../core/constant/backlinks.dart';

class CartItem extends GetView<ItemsDetailsControllerImp> {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: CachedNetworkImage(
            imageUrl: "$itemsImageNameLink/${controller.itemModel.itemsImage}",
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
            title: Text("${controller.itemModel.itemsName}",
                style: Styles.textStyle20.copyWith(color: Colors.black)),
            subtitle: Opacity(
              opacity: .6,
              child: Text("${controller.itemModel.itemsPrice}",
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
            Text("3",
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

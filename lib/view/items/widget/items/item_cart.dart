import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/items/items_view_controller.dart';

class ItemCard extends GetView<ItemsControllerImp> {
  const ItemCard(
      {super.key,
      required this.itemImage,
      required this.itemTitle,
      required this.itemDes,
      required this.itemPrice});
  final String itemImage;
  final String itemTitle;
  final String itemDes;
  final int itemPrice;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItemDetails();
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Hero(
                  tag: itemImage,
                  child: CachedNetworkImage(
                    imageUrl: itemImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(itemTitle,
                  style: Styles.textStyle20.copyWith(color: Colors.black)),
              Text(
                itemDes,
                style: Styles.textStyle14,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const Spacer(),
              Row(
                children: [
                  Text("\$ $itemPrice",
                      style: Styles.textStyle20.copyWith(color: Colors.red)),
                  const Spacer(),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

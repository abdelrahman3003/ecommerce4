import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:eccommerce4/data/model/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/items/items_view_controller.dart';
import '../../../../core/constant/backlinks.dart';

class ItemCard extends GetView<ItemsControllerImp> {
  const ItemCard({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItemDetails(itemModel);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Hero(
                  tag: itemModel.itemsId!,
                  child: CachedNetworkImage(
                    imageUrl: "$itemsImageNameLink/${itemModel.itemsImage}",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(itemModel.itemsName!,
                  style: Styles.textStyle20.copyWith(color: Colors.black)),
              Text(
                itemModel.itemsDes!,
                style: Styles.textStyle14,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const Spacer(),
              Row(
                children: [
                  Text("\$ ${itemModel.itemsPrice}",
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

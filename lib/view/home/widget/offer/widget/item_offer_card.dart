import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constant/backlinks.dart';
import '../../../../../data/model/itemoffer_model.dart';

class ItemOfferCard extends StatelessWidget {
  const ItemOfferCard({super.key, required this.itemOfferModel});
  final ItemOfferModel itemOfferModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {},
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Center(
                    child: SizedBox(
                      height: 150,
                      child: Hero(
                        tag: "${itemOfferModel.itemsId!}",
                        child: CachedNetworkImage(
                          imageUrl:
                              "$itemsImageNameLink/${itemOfferModel.itemsImage}",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(itemOfferModel.itemsName!,
                      style: Styles.textStyle20.copyWith(color: Colors.black)),
                  Text(
                    itemOfferModel.itemsDes!,
                    style: Styles.textStyle14,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          itemOfferModel.itemsDiscount != 0
                              ? Text("\$ ${itemOfferModel.itemsPrice}",
                                  style: Styles.textStyle18.copyWith(
                                    color: Colors.red,
                                    decoration: TextDecoration.lineThrough,
                                  ))
                              : Container(),
                          Text(
                              "\$ ${itemOfferModel.itemDiscountPrice.toString()}",
                              style: Styles.textStyle20
                                  .copyWith(color: Colors.red)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        itemOfferModel.itemsDiscount != 0
            ? const CircleAvatar(
                backgroundImage: AssetImage("assets/images/discount.png"))
            : Container()
      ],
    );
  }
}

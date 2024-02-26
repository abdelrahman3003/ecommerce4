import 'package:eccommerce4/controller/items/item_details_controller.dart';
import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemPrice extends StatelessWidget {
  const ItemPrice({super.key, required this.price});
  final String price;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemsDetailsControllerImp>(
        builder: (controller) => Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          controller.cartControllerImp
                              .addCart(controller.itemModel.itemsId);
                          controller.cartControllerImp.count++;
                        },
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
                          child: Center(
                            child: Text(
                              "${controller.cartControllerImp.count}",
                              style: Styles.textStyle18,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          controller.cartControllerImp
                              .removeCart(controller.itemModel.itemsId);
                          controller.cartControllerImp.count++;
                        },
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
            ));
  }
}

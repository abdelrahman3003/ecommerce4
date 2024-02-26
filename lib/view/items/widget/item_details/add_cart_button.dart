import 'package:eccommerce4/controller/items/item_details_controller.dart';
import 'package:eccommerce4/core/shared/widgets/buttons/onboarding_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCartButton extends GetView<ItemsDetailsControllerImp> {
  const AddCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: OnboardingButton(
        text: "Add To Cart",
        onPressed: () {
          controller.cartControllerImp.addCart(controller.itemModel.itemsId);
        },
        width: double.infinity,
        borderRadius: 10,
      ),
    );
  }
}

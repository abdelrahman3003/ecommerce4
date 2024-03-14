import 'package:eccommerce4/controller/setting/orders_controller.dart';
import 'package:eccommerce4/core/shared/widgets/buttons/onboarding_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeleteOrderButton extends GetView<OrderControllerImp> {
  const DeleteOrderButton({super.key, required this.orderid});
  final int orderid;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: OnboardingButton(
        text: "Delete",
        onPressed: () {
          controller.deleteOrder(orderid);
        },
        width: Get.width / 5,
        color: Colors.white,
        textColor: Colors.red,
      ),
    );
  }
}

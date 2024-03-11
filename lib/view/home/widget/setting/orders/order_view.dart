import 'package:eccommerce4/controller/cart/order_controller.dart';
import 'package:eccommerce4/core/class/data_handilng.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/order_view_body.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OrderControllerImp());
    return SafeArea(
      child: Scaffold(
          body: GetBuilder<OrderControllerImp>(
        builder: (controller) => DataHandlingState(
            statusRequest: controller.statusRequest,
            widget: OrderViewBody(orderList: controller.orderList)),
      )),
    );
  }
}

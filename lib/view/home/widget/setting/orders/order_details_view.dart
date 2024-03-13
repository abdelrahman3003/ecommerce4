import 'package:eccommerce4/controller/setting/order_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/order_details_view/order_details_view_body.dart';

class OrderdetailsView extends StatelessWidget {
  const OrderdetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OrderDetailsControllerImp());
    return const SafeArea(
        child: Scaffold(
      body: OrederDetailsViewBody(),
    ));
  }
}

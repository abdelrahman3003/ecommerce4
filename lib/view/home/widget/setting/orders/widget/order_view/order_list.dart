import 'package:eccommerce4/controller/setting/orders_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

import 'order_card.dart';

class OrderList extends GetView<OrderControllerImp> {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: controller.orderList.length,
      itemBuilder: (context, index) => OrderCard(
        orderModel: controller.orderList[index],
        orderPrice: "${controller.orderList[index].ordersPrice}",
        deliveryprice: "${controller.orderList[index].ordersPricedelivery}",
        orderType: controller.orderList[index].ordersType == 0
            ? "Receive"
            : "Delivery",
        ordernumber: controller.orderList[index].ordersId!,
        orderdate:
            " ${Jiffy.parse(controller.orderList[index].ordersDatetime!).fromNow()}",
        orderStatus: controller.orderList[index].ordersStatus == 0
            ? "approving"
            : controller.orderList[index].ordersStatus == 1
                ? "On Road"
                : "Archived",
        paymentMethod: controller.orderList[index].ordersPaymentmethod == 0
            ? "On Delivery"
            : "On Card",
        totalPrice: "${controller.orderList[index].totalprice}",
      ),
    );
  }
}

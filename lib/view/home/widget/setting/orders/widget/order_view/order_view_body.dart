import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

import '../../../../../../../data/model/order_model.dart';
import '../../../../../../cart/widget/cart/custom_abbpar.dart';
import 'order_card.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key, required this.orderList});
  final List<OrderModel> orderList;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAbbpar(title: "Orders"),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: orderList.length,
            itemBuilder: (context, index) => OrderCard(
              orderPrice: "${orderList[index].ordersPrice}",
              deliveryprice: "${orderList[index].ordersPricedelivery}",
              orderType:
                  orderList[index].ordersType == 0 ? "Receive" : "Delivery",
              ordernumber: "${orderList[index].ordersId}",
              orderdate:
                  " ${Jiffy.parse(orderList[index].ordersDatetime!).fromNow()}",
              orderStatus: orderList[index].ordersStatus == 0
                  ? "approving"
                  : orderList[index].ordersStatus == 1
                      ? "On Road"
                      : "Archived",
              paymentMethod: orderList[index].ordersPaymentmethod == 0
                  ? "On Delivery"
                  : "On Card",
              totalPrice: "${orderList[index].totalprice}",
            ),
          ),
        )
      ],
    );
  }
}

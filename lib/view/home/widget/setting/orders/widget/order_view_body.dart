import 'package:flutter/material.dart';

import '../../../../../../data/model/order_model.dart';
import '../../../../../cart/widget/cart/custom_abbpar.dart';
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
        ListView.builder(
          itemCount: orderList.length,
          itemBuilder: (context, index) => OrderCard(
            orderPrice: "${orderList[index].ordersPrice}",
            deliveryprice: "${orderList[index].ordersPricedelivery}",
            orderType: "${orderList[index].ordersType}",
            ordernumber: "${orderList[index].ordersId}",
            orderStatus: "${orderList[index].ordersStatus}",
            paymentMethod: "${orderList[index].ordersPaymentmethod}",
            totalPrice: "${orderList[index].ordersPrice}",
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'widget/order_details_view/order_details_view_body.dart';

class OrderdetailsView extends StatelessWidget {
  const OrderdetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: OrederDetailsViewBody(),
    ));
  }
}

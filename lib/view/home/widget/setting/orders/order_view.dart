import 'package:flutter/material.dart';

import 'widget/order_view_body.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OrderViewBody(),
    );
  }
}

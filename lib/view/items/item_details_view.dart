import 'package:eccommerce4/controller/items/item_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/item_details/item_details_view_body.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ItemDetailsViewBody()),
    );
  }
}

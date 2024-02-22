import 'package:flutter/material.dart';

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

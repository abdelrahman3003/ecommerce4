import 'package:eccommerce4/controller/home/offer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/offer_view_body.dart';

class OfferView extends StatelessWidget {
  const OfferView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsOfferControllerImp());
    return const OfferViewBody();
  }
}

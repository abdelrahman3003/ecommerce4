import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/home/setting_controller.dart';
import 'setting_item_card.dart';

class SeetingListTile extends GetView<SettingControllerImp> {
  const SeetingListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SettinItemCard(title: "Notification", icon: Icons.notifications),
        SettinItemCard(
            onTap: () {
              Get.toNamed(kOrderView);
            },
            title: "Orders",
            icon: Icons.card_travel),
        const SettinItemCard(
            title: "Address", icon: Icons.location_city_outlined),
        const SettinItemCard(
            title: "About u", icon: Icons.help_outline_rounded),
        const SettinItemCard(
            title: "Contact us", icon: Icons.phone_callback_outlined),
        SettinItemCard(
            onTap: () {
              controller.logout();
            },
            title: "Logout",
            icon: Icons.logout),
      ],
    );
  }
}

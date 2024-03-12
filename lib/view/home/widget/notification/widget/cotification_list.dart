import 'package:flutter/material.dart';

import 'notification_card.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) => const NotificationCard(
          date: "day ago",
          subtitle: "there an order is appreved",
          tilte: "approved"),
    );
  }
}

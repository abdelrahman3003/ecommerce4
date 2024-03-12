import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';

import 'cotification_list.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(child: Text("Notifications", style: Styles.textStyle25black)),
        SizedBox(height: 10),
        Expanded(child: NotificationList()),
      ],
    );
  }
}

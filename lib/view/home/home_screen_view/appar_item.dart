import 'package:flutter/material.dart';

import '../../../core/shared/styles.dart';

class AppbarItem extends StatelessWidget {
  const AppbarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.home, color: Colors.black, size: 28),
          Text(
            "Home",
            style: Styles.textStyle16,
          ),
        ],
      ),
    );
  }
}

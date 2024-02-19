import 'package:flutter/material.dart';

import 'appar_item.dart';

class AppBottomNavigatorBar extends StatelessWidget {
  const AppBottomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        AppbarItem(),
        AppbarItem(),
        Spacer(),
        AppbarItem(),
        AppbarItem(),
      ],
    );
  }
}

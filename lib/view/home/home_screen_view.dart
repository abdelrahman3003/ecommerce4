import 'package:flutter/material.dart';

import 'home_screen_view/custom_botttom_navigatorbar.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppBottomNavigatorBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.home)),
      body: Container(),
    );
  }
}

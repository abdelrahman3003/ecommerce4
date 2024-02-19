import 'package:flutter/material.dart';

import 'home_page_view/home_view_body.dart';
import 'home_screen_view/custom_botttom_navigatorbar.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const AppBottomNavigatorBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.home)),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: HomeViewBody(),
        ),
      ),
    );
  }
}

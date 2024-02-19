import 'package:flutter/material.dart';

import 'home_page_view/home_view_body.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: HomeViewBody(),
    );
  }
}

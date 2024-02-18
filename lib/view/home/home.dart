import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
            child: Text(
          "HomeView",
          style: Styles.textStyle18,
        )),
      ),
    );
  }
}

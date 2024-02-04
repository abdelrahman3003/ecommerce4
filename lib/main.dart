import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:eccommerce4/view/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const Ecommerce());
}

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const Onboarding(),
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme: ThemeData(fontFamily: "Cairo"),
    );
  }
}

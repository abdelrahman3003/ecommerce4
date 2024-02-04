import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnboardingController extends GetxController {
  next();
  pageInchanged(int index);
}

class OnboardingControllerImp extends OnboardingController {
  int pagecount = 0;
  PageController pageController = PageController();
  bool isfinish = false;
  @override
  next() {
    pagecount++;
    pageController.animateToPage(pagecount,
        duration: const Duration(milliseconds: 900), curve: Curves.ease);
  }

  @override
  pageInchanged(index) {
    pagecount = index;
    update();
  }
}

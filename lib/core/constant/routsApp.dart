import 'package:eccommerce4/view/onboarding/onboarding.dart';
import 'package:eccommerce4/view/signin/sginin.dart';
import 'package:flutter/material.dart';

const kSignin = "/Signin";
const konboarding = "/onboarding";

Map<String, Widget Function(BuildContext)> routes = {
  kSignin: (context) => const Signin(),
  konboarding: (context) => const Onboarding(),
};

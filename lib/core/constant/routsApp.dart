import 'package:eccommerce4/view/auth/view/signin.dart';
import 'package:eccommerce4/view/auth/view/signup.dart';
import 'package:eccommerce4/view/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

const konboarding = "/onboarding";
const kSignin = "/Signin";
const kSignup = "/Signup";
Map<String, Widget Function(BuildContext)> routes = {
  konboarding: (context) => const Onboarding(),
  kSignin: (context) => const Signin(),
  kSignup: (context) => const Signup(),
};

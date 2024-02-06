import 'package:eccommerce4/view/auth/signin.dart';
import 'package:eccommerce4/view/auth/signup.dart';
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

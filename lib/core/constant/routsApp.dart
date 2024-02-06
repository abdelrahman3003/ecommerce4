import 'package:eccommerce4/view/auth/forget_password.dart';
import 'package:eccommerce4/view/auth/reset_password.dart';
import 'package:eccommerce4/view/auth/signin.dart';
import 'package:eccommerce4/view/auth/signup.dart';
import 'package:eccommerce4/view/auth/verify.dart';
import 'package:eccommerce4/view/auth/widgets/restpassword/reset_password_succes.dart';
import 'package:eccommerce4/view/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

const konboarding = "/Onboarding";
const kSignin = "/Signin";
const kSignup = "/Signup";
const kForgetPassword = "/ForgetPassword";
const kVerify = "/Verify";
const kRestPassword = "/RestPassword";
const kSuccess = "/Success";
const kResetpasswordsucsess = "/Resetpasswordsucsess";

Map<String, Widget Function(BuildContext)> routes = {
  konboarding: (context) => const Onboarding(),
  kSignin: (context) => const Signin(),
  kSignup: (context) => const Signup(),
  kForgetPassword: (context) => const ForgetPassword(),
  kVerify: (context) => const Verify(),
  kRestPassword: (context) => const RestPassword(),
  kResetpasswordsucsess: (context) => const RestSuccesPassword(),
};

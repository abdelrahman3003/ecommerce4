import 'package:eccommerce4/view/auth/check_email.dart';
import 'package:eccommerce4/view/auth/reset_password.dart';
import 'package:eccommerce4/view/auth/signin.dart';
import 'package:eccommerce4/view/auth/signup.dart';
import 'package:eccommerce4/view/auth/widgets/restpassword/reset_password_succes.dart';
import 'package:eccommerce4/view/auth/widgets/signup/success_signup.dart';
import 'package:eccommerce4/view/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

import '../../view/auth/verifycode.dart';

const konboarding = "/Onboarding";
const kSignin = "/Signin";
const kSignup = "/Signup";
const kCheckEmail = "/CheckEmail";
const kVerifyCode = "/kVerifyCode";
const kSignupSucess = "/SuccessSignup";
const kResetpasswordsucsess = "/Resetpasswordsucsess";
const kRestPassword = "/RestPassword";

Map<String, Widget Function(BuildContext)> routes = {
  konboarding: (context) => const Onboarding(),
  kSignin: (context) => const Signin(),
  kSignup: (context) => const Signup(),
  kSignupSucess: (context) => const SuccessSignup(),
  kRestPassword: (context) => const RestPassword(),
  kResetpasswordsucsess: (context) => const RestSuccesPassword(),
  kCheckEmail: (context) => const CheckEmail(),
  kVerifyCode: (context) => const VerifyCode(),
};

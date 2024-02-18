import 'package:eccommerce4/core/middleware/appmiddleware.dart';
import 'package:eccommerce4/view/auth/check_email.dart';
import 'package:eccommerce4/view/auth/reset_password.dart';
import 'package:eccommerce4/view/auth/signin.dart';
import 'package:eccommerce4/view/auth/signup.dart';
import 'package:eccommerce4/view/auth/widgets/restpassword/reset_password_succes.dart';
import 'package:eccommerce4/view/auth/widgets/signup/success_signup.dart';
import 'package:eccommerce4/view/home/home_view.dart';
import 'package:eccommerce4/view/onboarding/onboarding.dart';
import 'package:get/route_manager.dart';

import '../../view/auth/verifycode.dart';

const konboarding = "/Onboarding";
const kSignin = "/Signin";
const kSignup = "/Signup";
const kCheckEmail = "/CheckEmail";
const kVerifyCode = "/kVerifyCode";
const kSignupSucess = "/SuccessSignup";
const kResetpasswordsucsess = "/Resetpasswordsucsess";
const kRestPassword = "/RestPassword";
const kHomeView = "/HomeView";
List<GetPage<dynamic>>? getPages = [
  GetPage(
      name: "/",
      page: () => const Onboarding(),
      middlewares: [AppMiddleWare()]),
  GetPage(name: kSignin, page: () => const Signin()),
  GetPage(name: kSignup, page: () => const Signup()),
  GetPage(name: kCheckEmail, page: () => const CheckEmail()),
  GetPage(name: kVerifyCode, page: () => const VerifyCode()),
  GetPage(name: kRestPassword, page: () => const RestPassword()),
  GetPage(name: kSignupSucess, page: () => const SuccessSignup()),
  GetPage(name: kResetpasswordsucsess, page: () => const RestSuccesPassword()),
  GetPage(name: kHomeView, page: () => const HomeView()),
];

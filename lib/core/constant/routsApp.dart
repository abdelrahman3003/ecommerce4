import 'package:eccommerce4/core/middleware/appmiddleware.dart';
import 'package:eccommerce4/view/auth/check_email.dart';
import 'package:eccommerce4/view/auth/reset_password.dart';
import 'package:eccommerce4/view/auth/signin.dart';
import 'package:eccommerce4/view/auth/signup.dart';
import 'package:eccommerce4/view/auth/widgets/restpassword/reset_password_succes.dart';
import 'package:eccommerce4/view/auth/widgets/signup/success_signup.dart';
import 'package:eccommerce4/view/favourite/favourite_view.dart';
import 'package:eccommerce4/view/home/cart_view.dart';
import 'package:eccommerce4/view/home/favotite_view.dart';
import 'package:eccommerce4/view/home/home_page_view.dart';
import 'package:eccommerce4/view/home/setting_view.dart';
import 'package:eccommerce4/view/onboarding/onboarding.dart';
import 'package:get/route_manager.dart';

import '../../view/auth/verifycode.dart';
import '../../view/home/home_screen_view.dart';
import '../../view/items/item_details_view.dart';
import '../../view/items/items_view.dart';

const konboarding = "/Onboarding";
const kSignin = "/Signin";
const kSignup = "/Signup";
const kCheckEmail = "/CheckEmail";
const kVerifyCode = "/kVerifyCode";
const kSignupSucess = "/SuccessSignup";
const kResetpasswordsucsess = "/Resetpasswordsucsess";
const kRestPassword = "/RestPassword";
const kHomePageView = "/HomePageView";
const kHomeScreenView = "/HomeScreenView";
const kFavouriteView = "/FavouriteView";
const kCartView = "/CartView";
const kSettingView = "/SettingView";
const kItemsView = "/ItemsView";
const kItemDetailsView = "/ItemsDetailsView";
const kfavouroteview2 = "/favouroteview2";
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
  GetPage(name: kHomePageView, page: () => const HomePageView()),
  GetPage(name: kHomeScreenView, page: () => const HomeScreenView()),
  GetPage(name: kFavouriteView, page: () => const FavouriteView()),
  GetPage(name: kCartView, page: () => const CartView()),
  GetPage(name: kSettingView, page: () => const SettingView()),
  GetPage(name: kItemsView, page: () => const ItemsView()),
  GetPage(name: kItemDetailsView, page: () => const ItemDetailsView()),
  GetPage(name: kfavouroteview2, page: () => const FavouriteView2()),
];

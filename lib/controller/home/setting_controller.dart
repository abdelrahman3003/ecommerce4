import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:eccommerce4/core/services/services.dart';
import 'package:get/get.dart';

abstract class SettingController extends GetxController {
  logout();
}

class SettingControllerImp extends SettingController {
  AppServices appServices = Get.find();
  @override
  logout() {
    appServices.sharedPreferences.setString("step", "1");
    Get.toNamed(kSignin);
  }
}

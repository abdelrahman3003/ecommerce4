import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:eccommerce4/core/localization/local_controller.dart';
import 'package:eccommerce4/core/localization/translations.dart';
import 'package:eccommerce4/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await inialServices();
  runApp(const Ecommerce());
}

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      locale: controller.language,
      translations: AppTrnaslations(),

      debugShowCheckedModeBanner: false,
      getPages: getPages,
      //routes: routes,
      theme: ThemeData(fontFamily: "Cairo"),
    );
  }
}

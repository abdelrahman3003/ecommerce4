import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statuscode.dart';
import '../../core/functions/handling _data.dart';
import '../../core/services/services.dart';
import '../../core/shared/styles.dart';
import '../../data/datasource/remote/cart/cart_data.dart';
import '../../data/model/cart_model.dart';

abstract class TestController extends GetxController {}

class TestControllerImp extends TestController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("========= test controller");
  }
}

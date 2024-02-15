import 'package:eccommerce4/core/class/crud.dart';
import 'package:get/get.dart';

class binding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}

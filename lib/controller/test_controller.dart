import 'package:eccommerce4/core/class/statuscode.dart';
import 'package:eccommerce4/core/functions/handling%20_data.dart';
import 'package:eccommerce4/view/test.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());
  late StatusRequest statusRequest;
  List data = [];
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    statusRequest = handlingApiData(response);

    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "failure") {
        statusRequest = StatusRequest.failure;
      } else {
        data.addAll(response['data']);
      }
    }

    update();
  }

  @override
  void onInit() {
    super.onInit();
    getData();
  }
}

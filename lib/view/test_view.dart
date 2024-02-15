import 'package:eccommerce4/controller/test_controller.dart';
import 'package:eccommerce4/core/class/statuscode.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      body: Center(
        child: GetBuilder<TestController>(
          builder: (controller) {
            if (controller.statusRequest == StatusRequest.loading) {
              return const Text("loading");
            } else if (controller.statusRequest ==
                StatusRequest.offlineFailure) {
              return const Text("no internet connenction");
            } else if (controller.statusRequest ==
                StatusRequest.serverFailure) {
              return const Text("Server Error");
            } else if (controller.statusRequest == StatusRequest.failure) {
              return const Text("there was an error");
            } else {
              return ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, index) => Text(
                  "${controller.data[index]}",
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

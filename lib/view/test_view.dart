import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/test_controller.dart';
import '../core/class/data_handilng.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      body: Center(
        child: GetBuilder<TestController>(
          builder: (controller) {
            return DataHandlingState(
              statusRequest: controller.statusRequest,
              widget: ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, index) => Text(
                  "${controller.data[index]}",
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:eccommerce4/controller/signup_controller.dart';
import 'package:eccommerce4/core/class/statuscode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/showpassword.dart';
import '../dividertext.dart';
import '../icons.dart';
import '../../../../core/shared/widgets/logo.dart';
import '../textsection.dart';
import 'signin_navigate.dart';
import 'signup_section_feild.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Showpassordcontroller());
    Get.put(SignupController());
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(height: 100),
          const Logo(),
          const SizedBox(height: 25),
          const TextsSections(
              title: "Welcome!", subtitle: "Create your account"),
          const SizedBox(height: 25),
          GetBuilder<SignupController>(
            builder: (controller) =>
                controller.statusRequest == StatusRequest.loading
                    ? const Center(child: Text("loading"))
                    : const SignupSectionFields(),
          ),
          const SizedBox(height: 20),
          const DividerText(),
          const IconsMeida(),
          const SizedBox(height: 30),
          const SigninNavigate(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

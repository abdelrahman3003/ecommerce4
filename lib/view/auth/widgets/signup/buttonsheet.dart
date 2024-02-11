import 'dart:io';

import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/shared/widgets/buttons/onboarding_Button.dart';

class ButtonSheet extends StatelessWidget {
  const ButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingButton(
        onPressed: () {
          File myfile;
          showModalBottomSheet(
            context: context,
            builder: (context) => SizedBox(
                height: 100,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () async {
                        final xfile = await ImagePicker()
                            .getImage(source: ImageSource.gallery);
                        myfile = File(xfile!.path);
                      },
                      child: const Text(
                        "From Galary",
                        style: Styles.textStyle16,
                      ),
                    ),
                    const SizedBox(height: 30),
                    InkWell(
                      onTap: () async {
                        final xfile = await ImagePicker()
                            .getImage(source: ImageSource.camera);
                        myfile = File(xfile!.path);
                      },
                      child: const Text(
                        "From Camera",
                        style: Styles.textStyle16,
                      ),
                    ),
                  ],
                )),
          );
        },
        text: "Upload Image");
  }
}

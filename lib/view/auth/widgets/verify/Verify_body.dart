import 'package:flutter/material.dart';
import '../textsection.dart';
import 'verify_form.dart';

class VerfiyBody extends StatelessWidget {
  const VerfiyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(height: 30),
          TextsSections(title: "Enter Code", subtitle: ""),
          VerifyForm(),
        ],
      ),
    );
  }
}

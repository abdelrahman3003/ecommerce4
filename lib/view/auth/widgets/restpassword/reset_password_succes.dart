import 'package:flutter/material.dart';
import '../succes/success.dart';

class RestSuccesPassword extends StatelessWidget {
  const RestSuccesPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Success(
      title: "Congratulations!",
      subtitle: "Password  successFully reseted",
      successtext: "Reset password ",
    ));
  }
}

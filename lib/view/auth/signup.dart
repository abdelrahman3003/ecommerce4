import 'package:flutter/material.dart';

import '../../core/functions/alert_exit.dart';
import 'widgets/signup/signup_body.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: WillPopScope(
      onWillPop: alertExitApp,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SignupBody(),
      ),
    ));
  }
}

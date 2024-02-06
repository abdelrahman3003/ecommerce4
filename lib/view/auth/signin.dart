import 'package:flutter/material.dart';

import 'widgets/signin/signin_body.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SigninBody(),
      ),
    );
  }
}

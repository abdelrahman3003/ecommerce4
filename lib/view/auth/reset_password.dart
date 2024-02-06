import 'package:flutter/material.dart';

import 'widgets/restpassword/restpassword_body.dart';

class RestPassword extends StatelessWidget {
  const RestPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResetpasswordBody(),
    );
  }
}

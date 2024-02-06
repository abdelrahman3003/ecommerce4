import 'package:flutter/widgets.dart';

import '../../../core/shared/styles.dart';

class ForgetPasswordText extends StatelessWidget {
  const ForgetPasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Opacity(
          opacity: .6,
          child: Text("Forget password", style: Styles.textStyle16)),
    );
  }
}

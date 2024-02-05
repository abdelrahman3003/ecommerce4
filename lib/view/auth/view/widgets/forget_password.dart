import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/widgets.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
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

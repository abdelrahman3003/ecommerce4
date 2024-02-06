import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/widgets.dart';

class SigninNavigate extends StatelessWidget {
  const SigninNavigate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Opacity(
          opacity: .8,
          child: Text(
            "Do have an account? ",
            style: Styles.textStyle16,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text("SignIn",
              style:
                  Styles.textStyle18.copyWith(color: ColorsApp.kprimaryColor1)),
        ),
      ],
    );
  }
}

import 'package:eccommerce4/view/auth/view/widgets/iconauth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconsMeida extends StatelessWidget {
  const IconsMeida({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconAuth(onTap: () {}, icon: FontAwesomeIcons.facebook),
        IconAuth(onTap: () {}, icon: FontAwesomeIcons.google),
        IconAuth(onTap: () {}, icon: FontAwesomeIcons.twitter),

        //  IconAuth(icon: FlutterIcons.twitter_ant,),
      ],
    );
  }
}

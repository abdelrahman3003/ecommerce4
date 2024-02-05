import 'package:flutter/material.dart';
import 'package:eccommerce4/core/constant/images_asset.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Image.asset(ImageAsset.one),
    );
  }
}

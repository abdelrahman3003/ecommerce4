import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../core/shared/styles.dart';

class TextItemOrderCard extends StatelessWidget {
  const TextItemOrderCard({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width / 5,
      child: Text(title,
          maxLines: 1,
          style: Styles.textStyle20black.copyWith(fontWeight: FontWeight.bold)),
    );
  }
}

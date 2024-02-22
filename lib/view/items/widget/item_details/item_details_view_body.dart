import 'package:flutter/material.dart';

class ItemDetailsViewBody extends StatelessWidget {
  const ItemDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(40))),
        ),
      ],
    );
  }
}

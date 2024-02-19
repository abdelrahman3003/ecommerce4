import 'package:flutter/material.dart';

import 'category_text.dart';

class CategoriesTextList extends StatelessWidget {
  const CategoriesTextList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CategoryText();
        },
      ),
    );
  }
}

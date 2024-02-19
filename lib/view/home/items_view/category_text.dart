import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  const CategoryText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(
              width: 125,
              child: Center(
                  child: Text("Category Name", style: Styles.textStyle18))),
          const SizedBox(height: 4),
          Container(
            width: 125,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5),
            ),
          )
        ],
      ),
    );
  }
}

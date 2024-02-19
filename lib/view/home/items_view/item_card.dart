import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 400,
        width: 150,
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset(
                "assets/images/1.PNG",
                fit: BoxFit.fill,
              ),
            ),
            Text("Mobile surface go",
                style: Styles.textStyle20.copyWith(color: Colors.black)),
            const Text(
              "yhis moble have alot of features and strong power and bior camera 150 mb , 16 ram ,254 gb ",
              style: Styles.textStyle14,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Row(
              children: [
                Text("2000 \$",
                    style: Styles.textStyle20.copyWith(color: Colors.red)),
                const Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))
              ],
            )
          ],
        ),
      ),
    );
  }
}

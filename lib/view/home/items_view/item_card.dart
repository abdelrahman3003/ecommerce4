import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard(
      {super.key,
      required this.itemImage,
      required this.itemTitle,
      required this.itemDes,
      required this.itemPrice});
  final String itemImage;
  final String itemTitle;
  final String itemDes;
  final int itemPrice;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Image.network(
                itemImage,
                fit: BoxFit.fill,
              ),
            ),
            Text(itemTitle,
                style: Styles.textStyle20.copyWith(color: Colors.black)),
            Text(
              itemDes,
              style: Styles.textStyle14,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Row(
              children: [
                Text("$itemPrice",
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

import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/constant/constatns_value.dart';
import 'package:eccommerce4/core/shared/styles.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.itemCount});
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 160,
          height: 140,
          decoration: BoxDecoration(
              color: ColorsApp.kprimaryColor1,
              borderRadius: BorderRadius.circular(kborderradius)),
        ),
        Expanded(
          child: ListTile(
            title: Text("honer x9 lite ",
                style: Styles.textStyle20.copyWith(color: Colors.black)),
            subtitle: Opacity(
              opacity: .6,
              child: Text("\$ 200 ",
                  style: Styles.textStyle18.copyWith(color: Colors.black)),
            ),
          ),
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
            Text("$itemCount",
                style: Styles.textStyle25
                    .copyWith(color: ColorsApp.kprimaryColor1)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove),
            ),
          ],
        )
      ],
    );
  }
}

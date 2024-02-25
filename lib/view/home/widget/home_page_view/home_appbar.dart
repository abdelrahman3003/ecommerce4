import 'package:eccommerce4/core/constant/colors.dart';
import 'package:eccommerce4/core/constant/constatns_value.dart';
import 'package:eccommerce4/core/constant/routsApp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 60,
            child: TextFormField(
              decoration: InputDecoration(
                prefix: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search)),
                hintText: "Find product",
                filled: true,
                fillColor: ColorsApp.kprimaryColor3,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(kborderradius),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
            height: 55,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kborderradius),
                color: ColorsApp.kprimaryColor3),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_outlined,
                size: 30,
                color: Colors.grey,
              ),
            )),
        const SizedBox(width: 10),
        Container(
            height: 55,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kborderradius),
                color: ColorsApp.kprimaryColor3),
            child: IconButton(
              onPressed: () {
                Get.toNamed(kfavouroteview);
              },
              icon: const Icon(
                Icons.favorite_outline_outlined,
                size: 30,
                color: Colors.grey,
              ),
            )),
      ],
    );
  }
}

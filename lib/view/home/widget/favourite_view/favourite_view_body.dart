import 'package:flutter/material.dart';
import '../home_page_view/home_appbar.dart';
import 'favourite_list_view.dart';

class FavouriteViewBody extends StatelessWidget {
  const FavouriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 10),
          HomeAppbar(),
          SizedBox(height: 30),
          FavouriteListView(),
        ],
      ),
    );
  }
}

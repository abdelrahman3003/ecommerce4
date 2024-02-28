import 'package:eccommerce4/data/model/items_model.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key, required this.itemsSearch});
  final List<ItemModel> itemsSearch;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemsSearch.length,
      itemBuilder: (context, index) {
        return Text("${itemsSearch[index].itemsName}");
      },
    );
  }
}

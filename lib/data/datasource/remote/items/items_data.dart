import 'package:eccommerce4/core/class/crud.dart';
import 'package:eccommerce4/core/constant/backlinks.dart';

class GetItemData {
  Crud crud;
  GetItemData(this.crud);
  getItemData(int id) async {
    var response =
        await crud.postData(itemsNameLink, {"categoryId": id.toString()});

    return response.fold((l) => l, (r) => r);
  }
}

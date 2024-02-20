import 'package:eccommerce4/core/class/crud.dart';
import 'package:eccommerce4/core/constant/backlinks.dart';

class getItemData {
  Crud crud;
  getItemData(this.crud);
  getitemData(int id) async {
    var response =
        await crud.getData(itemsNameLink, {"categoryId": id.toString()});
    return response.fold((l) => l, (r) => r);
  }
}

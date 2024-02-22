import 'package:eccommerce4/core/class/crud.dart';
import 'package:eccommerce4/core/constant/backlinks.dart';

class GetItemData {
  Crud crud;
  GetItemData(this.crud);
  getItemData() async {
    var response = await crud.getData(itemsNameLink, {});
    return response.fold((l) => l, (r) => r);
  }
}

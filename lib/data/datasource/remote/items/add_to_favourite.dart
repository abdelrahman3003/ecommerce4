import 'package:eccommerce4/core/class/crud.dart';
import 'package:eccommerce4/core/constant/backlinks.dart';

class AddToFavourite {
  Crud crud;
  AddToFavourite(this.crud);
  addToFavourite(int itemid, String userid) async {
    var response = await crud.postData(
        itemsNameLink, {"itemid": itemid.toString(), "userid": userid});
    return response.fold((l) => l, (r) => r);
  }
}

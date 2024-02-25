import 'package:eccommerce4/core/class/crud.dart';
import 'package:eccommerce4/core/constant/backlinks.dart';

class CartData {
  Crud crud;
  CartData(this.crud);
  addCart(String itemid, String userid) async {
    var response = await crud
        .postData(addcartNameLink, {"itemid": itemid, "userid": userid});
    return response.fold((l) => l, (r) => r);
  }

  removeCart(String itemid, String userid) async {
    var response = await crud
        .postData(removecartNameLink, {"itemid": itemid, "userid": userid});
    return response.fold((l) => l, (r) => r);
  }
}

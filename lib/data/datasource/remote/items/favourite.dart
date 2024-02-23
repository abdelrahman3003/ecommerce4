import 'package:eccommerce4/core/class/crud.dart';
import 'package:eccommerce4/core/constant/backlinks.dart';

class AddToFavourite {
  Crud crud;
  AddToFavourite(this.crud);
  addFavourite(int itemid, String userid) async {
    var response = await crud.postData(addtofavouriteNameLink,
        {"itemid": itemid.toString(), "userid": userid});
    return response.fold((l) => l, (r) => r);
  }

  deleteFavourite(int itemid, String userid) async {
    var response = await crud.postData(removefromfavouriteNameLink,
        {"itemid": itemid.toString(), "userid": userid});
    return response.fold((l) => l, (r) => r);
  }
}

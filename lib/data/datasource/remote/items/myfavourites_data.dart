import 'package:eccommerce4/core/class/crud.dart';
import 'package:eccommerce4/core/constant/backlinks.dart';

class MyFavourites {
  Crud crud;
  MyFavourites(this.crud);
  viewmyvafourite(String userid) async {
    var response = await crud.postData(viewmyfavourites, {"userid": userid});
    return response.fold((l) => l, (r) => r);
  }

  deleteFavourite(String favouriteid) async {
    var response =
        await crud.postData(viewmyfavourites, {"favouriteId": favouriteid});
    return response.fold((l) => l, (r) => r);
  }
}

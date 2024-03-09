import '../../../../core/class/crud.dart';
import '../../../../core/constant/backlinks.dart';

class OrderData {
  Crud crud;
  OrderData(this.crud);
  checkout(Map data) async {
    var response = await crud.postData(checkoutOrderNameLink, data);
    return response.fold((l) => l, (r) => r);
  }
}

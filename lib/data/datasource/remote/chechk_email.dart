import 'package:eccommerce4/core/class/crud.dart';
import 'package:eccommerce4/core/constant/backlinks.dart';

class CheckEmail {
  Crud crud;
  CheckEmail(this.crud);
  checkEmail(String email) async {
    var response = await crud.postData(
      signinNameLink,
      {
        "email": email,
      },
    );
    return response.fold((l) => l, (r) => r);
  }
}

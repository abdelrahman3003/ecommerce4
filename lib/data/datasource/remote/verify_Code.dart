import 'package:eccommerce4/core/class/crud.dart';
import 'package:eccommerce4/core/constant/backlinks.dart';

class GetVerifyCode {
  Crud crud;
  GetVerifyCode(this.crud);
  gettVerifyCode(String email,) async {
    var response = await crud.getData(
      signupNameLink,
      {
        "email": email,
      },
    );
    return response.fold((l) => l, (r) => r);
  }
}

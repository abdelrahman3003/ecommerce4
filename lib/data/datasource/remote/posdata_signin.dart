import 'package:eccommerce4/core/class/crud.dart';
import 'package:eccommerce4/core/constant/backlinks.dart';

class PostDataSignin {
  Crud crud;
  PostDataSignin(this.crud);
  postDataSignup(String email, String password) async {
    var response = await crud.postData(
      signupNameLink,
      {
        "email": email,
        "password": password,
      },
    );
    return response.fold((l) => l, (r) => r);
  }
}

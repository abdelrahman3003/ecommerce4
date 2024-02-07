import 'package:get/get.dart';

validation(String val, int min, int max, String type) {
  if (val.isEmpty) {
    return " Can't be empty ";
  }
  if (val.length < min) {
    return " Can't be less than $min";
  }
  if (val.length > max) {
    return " Can't be larger than $max";
  }
  if (type == "Username") {
    if (!GetUtils.isUsername(val)) {
      return "not valid username";
    }
  }
  if (type == "Email") {
    if (!GetUtils.isEmail(val)) {
      return "not valid email";
    }
  }
}

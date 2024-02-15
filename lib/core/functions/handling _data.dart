import 'package:eccommerce4/core/class/statuscode.dart';

handlingApiData(response) {
  if (response is StatusRequest) {
    return StatusRequest;
  }
  return StatusRequest.success;
}

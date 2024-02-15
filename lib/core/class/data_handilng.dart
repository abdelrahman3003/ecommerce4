import 'package:eccommerce4/core/class/statuscode.dart';
import 'package:flutter/widgets.dart';

class DataHandlingState extends StatelessWidget {
  const DataHandlingState(
      {super.key, required this.statusRequest, required this.widget});
  final StatusRequest statusRequest;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Text("loading")
        : statusRequest == StatusRequest.offlineFailure
            ? const Text("no internet connenction")
            : statusRequest == StatusRequest.serverFailure
                ? const Text("Server Error")
                : statusRequest == StatusRequest.failure
                    ? const Text("no data is found")
                    : widget;
  }
}

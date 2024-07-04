import 'dart:async';

import 'package:eccommerce4/core/class/statuscode.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class AddAddressController extends GetxController {
  getCurrentPosition();
}

class AddAddressControllerImp extends AddAddressController {
  Completer<GoogleMapController>? completerController;
  Position? position;
  CameraPosition? kGooglePlex;
  StatusRequest statusRequest = StatusRequest.loading;

  @override
  void onInit() {
    completerController = Completer<GoogleMapController>();
    getCurrentPosition();
    super.onInit();
  }

  @override
  getCurrentPosition() async {
    position = await Geolocator.getCurrentPosition();
    kGooglePlex = CameraPosition(
      target: LatLng(position!.latitude, position!.longitude),
      zoom: 14.4746,
    );
    statusRequest = StatusRequest.success;
    update();
  }
}
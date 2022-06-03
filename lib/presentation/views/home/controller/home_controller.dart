import 'dart:async';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rimo_tech/services/keys.dart';
import 'package:rimo_tech/services/storage.dart';

class HomeController extends GetxController {
  final prefs = Get.find<LocalSharedPreferences>();
  var text = ''.obs;
  var test = ''.obs;
  @override
  void onReady() {
    super.onReady();

    final firstname = prefs.getString(StorageKeys.firstname);
    final account = (prefs.getString(StorageKeys.balance));
    test.value = firstname!;
    text.value = account!;
  }

  Completer<GoogleMapController> controller = Completer();

  static final CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  navigateToOrder() {
    Get.toNamed('/order');
  }
}

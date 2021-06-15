import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mygetxtemplate/modules/login/login_controller.dart';

class HomeController extends GetxController {
  LoginController controller = Get.find();

  late GoogleMapController mapController;
  final LatLng center = const LatLng(45.521563, -122.677433);

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  String? _userName;
  String? get userName => _userName;
  String? _emailUser;
  String? get emailUser => _emailUser;

  final CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  final CameraPosition kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  void onInit() {
    super.onInit();
    if (controller.user!.displayName != null) {
      _userName = controller.user!.displayName;
    } else {
      _userName = '';
    }

    if (controller.user!.email != null) {
      _emailUser = controller.user!.email;
    } else {
      _emailUser = '';
    }
  }
}

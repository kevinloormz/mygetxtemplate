import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mygetxtemplate/core/utils/getStoragedKey.dart';
//import 'package:mygetxtemplate/global_widgets/custom_text.dart';
import 'package:mygetxtemplate/modules/home/home_controller.dart';
import 'package:mygetxtemplate/modules/login/login_controller.dart';
//import 'dart:async';

class HomePage extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('${controller.userName}'),
              accountEmail: Text('${controller.emailUser}'),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text(
                "Payments History",
              ),
              onTap: () async {
                // paymentsController.getPaymentHistory();
              },
            ),
            ListTile(
              leading: Icon(Icons.switch_left),
              title: Text('Modo oscuro'),
              onTap: () {
                GetStorageKey().changeThemeMode();
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Cerrar sesion'),
              onTap: () {
                Get.find<LoginController>().logOut();
              },
            ),
          ],
        ),
      ),
      body: GoogleMap(
        onMapCreated: controller.onMapCreated,
        initialCameraPosition: CameraPosition(
          target: controller.center,
          zoom: 11.0,
        ),
      ),
    );
  }
}

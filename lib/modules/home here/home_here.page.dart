import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygetxtemplate/core/utils/getStoragedKey.dart';
import 'package:mygetxtemplate/modules/home%20here/home_here_controller.dart';
import 'package:mygetxtemplate/modules/login/login_controller.dart';

class HomeHerePage extends GetView<HomeHereController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Maps Here'),
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
        body: Container());
  }
}

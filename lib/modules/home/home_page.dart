import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygetxtemplate/core/utils/getStoragedKey.dart';
//import 'package:mygetxtemplate/global_widgets/custom_text.dart';
import 'package:mygetxtemplate/modules/home/home_controller.dart';
import 'package:mygetxtemplate/modules/login/login_controller.dart';

class HomePage extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('${controller.user!.displayName}'),
              accountEmail: Text('${controller.user!.email}'),
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
      body: Container(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygetxtemplate/modules/home/home_page.dart';
import 'package:mygetxtemplate/modules/login/login_controller_prueba.dart';
import 'package:mygetxtemplate/modules/login/login_page.dart';
//import 'package:mygetxtemplate/routes/app_pages.dart';

class RootPage extends GetView<LoginPruebaController> {
  @override
  Widget build(BuildContext context) {
    return GetX<LoginPruebaController>(
      init: LoginPruebaController(),
      builder: (_) {
        if (Get.find<LoginPruebaController>().user != null) {
          return HomePage();
        } else {
          return LoginPage();
        }
      },
    );
  }
}

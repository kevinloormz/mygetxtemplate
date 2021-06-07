import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygetxtemplate/modules/home/home_page.dart';
import 'package:mygetxtemplate/modules/login/login_controller.dart';
import 'package:mygetxtemplate/modules/login/login_page.dart';
//import 'package:mygetxtemplate/routes/app_pages.dart';

class RootPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return GetX<LoginController>(
      init: LoginController(),
      builder: (_) {
        if (Get.find<LoginController>().user != null) {
          return HomePage();
        } else {
          return LoginPage();
        }
      },
    );
  }
}

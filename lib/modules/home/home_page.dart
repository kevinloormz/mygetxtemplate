import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygetxtemplate/modules/home/home_controller.dart';
import 'package:mygetxtemplate/modules/login/login_controller_prueba.dart';

class HomePage extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: SafeArea(child: Text('HomeController')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<LoginPruebaController>().logOut();
        },
      ),
    );
  }
}

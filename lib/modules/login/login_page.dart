import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:mygetxtemplate/modules/login/login_controller.dart';
import 'package:mygetxtemplate/modules/login/login_controller_prueba.dart';
//import 'package:mygetxtemplate/modules/login/login_controller_prueba.dart';

//import 'login_controller.dart';

class LoginPage extends GetWidget<LoginPruebaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: controller.email,
          decoration: InputDecoration(
              hintText: 'Usuario',
              border: InputBorder.none,
              fillColor: Color(0xfff3f3f4),
              filled: true),
        ),
        SizedBox(height: 20),
        TextField(
          controller: controller.pass,
          decoration: InputDecoration(
              hintText: 'Contraseña',
              border: InputBorder.none,
              fillColor: Color(0xfff3f3f4),
              filled: true),
          obscureText: true,
        ),
        SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
              controller.signInWithEmailAndPassword();
              //controller.setInitialScreen();
            },
            child: Text('Iniciar'))
      ],
    ));
  }
}

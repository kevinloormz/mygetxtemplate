import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginPage extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: 'Usuario',
              border: InputBorder.none,
              fillColor: Color(0xfff3f3f4),
              filled: true),
        ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
              hintText: 'Contraseña',
              border: InputBorder.none,
              fillColor: Color(0xfff3f3f4),
              filled: true),
          obscureText: true,
        ),
        SizedBox(height: 20),
        ElevatedButton(onPressed: () {}, child: Text('Iniciar'))
      ],
    ));
  }
}

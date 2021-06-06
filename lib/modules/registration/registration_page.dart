import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygetxtemplate/modules/registration/registration_controller.dart';

class RegistrationPage extends GetView<RegistrationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: 'Nombres',
              border: InputBorder.none,
              fillColor: Color(0xfff3f3f4),
              filled: true),
        ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
              hintText: 'Email',
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
        ElevatedButton(onPressed: () {}, child: Text('Registrarse'))
      ],
    ));
  }
}

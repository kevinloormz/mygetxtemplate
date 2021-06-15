import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygetxtemplate/core/theme/custom_color.dart';
import 'package:mygetxtemplate/global_widgets/custom_text.dart';
import 'package:mygetxtemplate/modules/login/login_controller.dart';

class LoginPage extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildText(
          data: 'Bienvenido',
          color: CustomColor().blackAndWhiteColor,
          size: 40,
        ),
        SizedBox(height: 60),
        TextField(
          controller: controller.email,
          decoration: InputDecoration(
              hintText: 'Correo Electronico',
              border: InputBorder.none,
              // fillColor: Color(0xfff3f3f4),
              filled: true),
        ),
        SizedBox(height: 20),
        TextField(
          controller: controller.pass,
          decoration: InputDecoration(
              hintText: 'Contraseña',
              border: InputBorder.none,
              // fillColor: Color(0xfff3f3f4),
              filled: true),
          obscureText: true,
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            controller.signInWithEmailAndPassword();
            controller.addUser();
          },
          child: buildText(
            data: 'Iniciar Sesión',
            color: CustomColor().primaryTextColor,
            size: 16,
          ),
        ),
        SizedBox(height: 20),
        buildText(
          data: 'Puede iniciar sesion con',
          color: CustomColor().secondaryTextColor,
          size: 12,
        ),
        SizedBox(height: 20),
        TextButton(
            onPressed: () {
              controller.googleSignInAccount();
            },
            child: Text(
              'Google',
              style: TextStyle(color: Colors.red),
            ))
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygetxtemplate/core/theme/custom_textStyle.dart';
import 'package:mygetxtemplate/global_widgets/custom_text.dart';
//import 'package:mygetxtemplate/modules/login/login_controller.dart';
import 'package:mygetxtemplate/modules/login/login_controller.dart';
//import 'package:mygetxtemplate/modules/login/login_controller_prueba.dart';

//import 'login_controller.dart';

class LoginPage extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
            //controller.setInitialScreen();
          },
          child: CustomText(
            data: 'Iniciar Sesión',
            textStyle: CustomTextStyle().textStyle16WithThemeColor,
          ),
        ),
        SizedBox(height: 20),
        CustomText(
          data: 'Puedes iniciar con',
          textStyle: CustomTextStyle().textStyleTwelveWithGreyColor,
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

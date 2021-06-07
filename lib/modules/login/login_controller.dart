//import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:mygetxtemplate/routes/app_pages.dart';
//import 'package:mygetxtemplate/routes/app_pages.dart';
//import 'package:firebase_core/firebase_core.dart';

class LoginController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  //final user = User().obs;
  //late Rx<User> firebaseUser;

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  void onReady() {
    //super.onReady();
    //firebaseUser = Rx<User>(auth.currentUser);
    //user = Rxn<User>(auth.currentUser);
    //user.bindStream(auth.userChanges());
    //ever(user, _setInitialScreen);
    //setInitialScreen();
  }

  void anonimo() async {
    UserCredential userCredential =
        await FirebaseAuth.instance.signInAnonymously();
    final user = userCredential.user;
    Get.snackbar('Hola', 'Ingreso correctamente ${user!.uid}');
  }

  void emailLogin() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: email.text.trim(), password: pass.text.trim());
      final user = userCredential.user;
      Get.snackbar('Hola', 'Ingreso correctamente ${user!.uid}');
      //Get.toNamed(Routes.HOME);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      Get.snackbar('Hola', 'ingreso incorrecto');
    }

    //User? user = FirebaseAuth.instance.currentUser;
    //print(user!.email);
  }
}

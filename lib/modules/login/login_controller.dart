//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mygetxtemplate/global_widgets/custom_snackbar.dart';
import 'package:mygetxtemplate/global_widgets/loading.dart';
import 'package:mygetxtemplate/modules/initial/initial_controller.dart';
//import 'package:mygetxtemplate/modules/login/login_page.dart';
import 'package:mygetxtemplate/routes/app_pages.dart';

class LoginController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  GoogleSignIn _googleSignIn = GoogleSignIn();
  // bool _isLoading = true;

  Rxn<User> _user = Rxn<User>();

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  //String? get user => _user.value?.email;
  User? get user => _user.value;

  @override
  void onInit() {
    super.onInit();
    _user = Rxn<User>(_auth.currentUser);
    _user.bindStream(_auth.authStateChanges());
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void signInWithEmailAndPassword() async {
    showLoading2();
    try {
      //await _auth.signInWithEmailAndPassword(
      //  email: email.text.trim(), password: pass.text.trim());
      await _auth.signInWithEmailAndPassword(
          email: 'kevinloorm@gmail.com', password: 'rool1494');
      _user = Rxn<User>(_auth.currentUser);
      _user.bindStream(_auth.authStateChanges());
      Get.offAllNamed(Routes.HOME);
      print(user);
    } catch (e) {
      showSnackbarerror('Contraseña o email incorrectos');
      await Future.delayed(Duration(seconds: 2));
      dismissLoadingWidget();
      dismissLoadingWidget();
    }
  }

  void googleSignInAccount() async {
    showLoading2();
    GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    print(googleUser);

    if (googleUser != null) {
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleUser.authentication;

      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        // final UserCredential userCredential =
        await _auth.signInWithCredential(credential);
        _user = Rxn<User>(_auth.currentUser);
        _user.bindStream(_auth.authStateChanges());
        Get.offAllNamed(Routes.HOME);
      } catch (e) {
        showSnackbarerror('Error login con cuenta Google');
      }
      await Future.delayed(Duration(seconds: 1));
      dismissLoadingWidget();
    }

    //dismissLoadingWidget();
    // Once signed in, return the UserCredential
  }

  void logOut() async {
    await _auth.signOut();
    //await _googleSignIn.disconnect();
    _googleSignIn.signOut();
    Get.reset();
    Get.lazyPut(() => InitialController());
    Get.lazyPut(() => LoginController());
    Get.toNamed(Routes.INITIAL);
  }
}

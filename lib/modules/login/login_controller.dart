//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mygetxtemplate/modules/initial/initial_controller.dart';
import 'package:mygetxtemplate/routes/app_pages.dart';

class LoginController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

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
    try {
      await _auth.signInWithEmailAndPassword(
          email: email.text.trim(), password: pass.text.trim());
      _user = Rxn<User>(_auth.currentUser);
      _user.bindStream(_auth.authStateChanges());
      //Get.offNamed(Routes.HOME);
      Get.offAllNamed(Routes.HOME);
      print(user);
    } catch (e) {
      Get.snackbar('Error login', 'Error de usuario o Contraseña');
    }
  }

  void googleSignInAccount() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    print(googleUser);

    // Once signed in, return the UserCredential
    //return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  void logOut() async {
    await _auth.signOut();
    Get.reset();
    Get.lazyPut(() => InitialController());
    Get.lazyPut(() => LoginController());
    Get.toNamed(Routes.INITIAL);
  }
}

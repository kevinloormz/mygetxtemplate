import 'package:get/get.dart';
import 'package:mygetxtemplate/modules/home%20here/home_here_controller.dart';
import 'package:mygetxtemplate/modules/home/home_controller.dart';
import 'package:mygetxtemplate/modules/initial/initial_controller.dart';
import 'package:mygetxtemplate/modules/login/login_controller.dart';
//import 'package:mygetxtemplate/modules/login/login_controller.dart';
import 'package:mygetxtemplate/modules/registration/registration_controller.dart';

class GlobalBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InitialController>(() => InitialController(), fenix: true);
    Get.lazyPut<LoginController>(() => LoginController(), fenix: true);
    Get.lazyPut<RegistrationController>(() => RegistrationController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<HomeHereController>(() => HomeHereController());
  }
}

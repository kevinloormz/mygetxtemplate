import 'package:get/get.dart';
import 'package:mygetxtemplate/modules/login/login_controller_prueba.dart';
import 'package:mygetxtemplate/routes/app_pages.dart';

class InitialController extends GetxController {
  @override
  void onReady() async {
    await Future.delayed(Duration(seconds: 2));

    if (Get.find<LoginPruebaController>().user != null) {
      //return HomePage();
      Get.offNamed(Routes.HOME);
    } else {
      //return LoginPage();
      Get.offNamed(Routes.LOGIN);
    }
  }
}

import 'package:get/get.dart';
import 'package:mygetxtemplate/modules/login/login_controller.dart';
import 'package:mygetxtemplate/routes/app_pages.dart';

class InitialController extends GetxController {
  @override
  void onReady() async {
    await Future.delayed(Duration(seconds: 2));

    if (Get.find<LoginController>().user != null) {
      //return HomePage();
      //Get.offAllNamed(Routes.HOME);
      Get.offAllNamed(Routes.HOMEHERE);
    } else {
      //return LoginPage();
      Get.offAllNamed(Routes.LOGIN);
    }
  }
}

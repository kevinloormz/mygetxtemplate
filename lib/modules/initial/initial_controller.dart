import 'package:get/get.dart';
import 'package:mygetxtemplate/routes/app_pages.dart';

class InitialController extends GetxController {
  @override
  void onReady() async {
    await Future.delayed(Duration(seconds: 2));
    Get.offNamed(Routes.LOGIN);
  }
}

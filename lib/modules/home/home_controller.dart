import 'package:get/get.dart';
import 'package:mygetxtemplate/modules/login/login_controller.dart';

class HomeController extends GetxController {
  LoginController controller = Get.find();
  String? _userName;
  String? get userName => _userName;
  String? _emailUser;
  String? get emailUser => _emailUser;

  @override
  void onInit() {
    super.onInit();
    if (controller.user!.displayName != null) {
      _userName = controller.user!.displayName;
    } else {
      _userName = '';
    }

    if (controller.user!.email != null) {
      _emailUser = controller.user!.email;
    } else {
      _emailUser = '';
    }
  }
}

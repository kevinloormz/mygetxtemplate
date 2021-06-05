import 'package:get/get.dart';
import 'package:mygetxtemplate/modules/initial/initial_controller.dart';

class GlobalBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InitialController>(() => InitialController());
  }
}

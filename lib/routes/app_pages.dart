import 'package:get/get.dart';
import 'package:mygetxtemplate/modules/global_binding.dart';
import 'package:mygetxtemplate/modules/home/home_page.dart';
import 'package:mygetxtemplate/modules/initial/initial_page.dart';
import 'package:mygetxtemplate/modules/login/login_page.dart';
import 'package:mygetxtemplate/modules/registration/registration_page.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => InitialPage(),
      binding: GlobalBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: GlobalBinding(),
    ),
    GetPage(
      name: Routes.REGISTRATION,
      page: () => RegistrationPage(),
      binding: GlobalBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: GlobalBinding(),
    ),
  ];
}

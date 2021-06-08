import 'package:get/get.dart';
import 'package:mygetxtemplate/modules/global_binding.dart';
import 'package:mygetxtemplate/modules/initial/initial_page.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => InitialPage(),
      binding: GlobalBinding(),
    )
  ];
}

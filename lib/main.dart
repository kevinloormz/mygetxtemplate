import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygetxtemplate/modules/global_binding.dart';
import 'package:mygetxtemplate/modules/initial/initial_page.dart';

import 'routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    // theme: appThemeData,
    defaultTransition: Transition.cupertino,
    initialBinding: GlobalBinding(),
    getPages: AppPages.pages,
    home: InitialPage(),
  ));
}

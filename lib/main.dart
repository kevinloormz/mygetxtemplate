import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygetxtemplate/modules/global_binding.dart';
import 'package:mygetxtemplate/modules/initial/initial_page.dart';

import 'routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    // theme: appThemeData,
    defaultTransition: Transition.fade,
    initialBinding: GlobalBinding(),
    getPages: AppPages.pages,
    home: InitialPage(),
  ));
}

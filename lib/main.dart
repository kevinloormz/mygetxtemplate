import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygetxtemplate/modules/global_binding.dart';
import 'package:mygetxtemplate/modules/initial/initial_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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

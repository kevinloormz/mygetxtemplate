import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mygetxtemplate/core/theme/custom_theme.dart';
import 'package:mygetxtemplate/core/utils/getStoragedKey.dart';
import 'package:mygetxtemplate/modules/global_binding.dart';
import 'package:mygetxtemplate/modules/initial/initial_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  final _getStorage = GetStorage();
  bool _isDarkMode = _getStorage.read(GetStorageKey.isDarkMode) ?? false;
  _getStorage.write(GetStorageKey.isDarkMode, _isDarkMode);
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    theme: _isDarkMode ? CustomTheme.darkThemeData : CustomTheme.lightThemeData,
    // theme: appThemeData,
    defaultTransition: Transition.cupertino,
    initialBinding: GlobalBinding(),
    getPages: AppPages.pages,
    home: InitialPage(),
  ));
}

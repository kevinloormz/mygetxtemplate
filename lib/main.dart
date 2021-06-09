import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mygetxtemplate/core/theme/custom_theme.dart';
import 'package:mygetxtemplate/core/utils/getStorageKey.dart';
import 'package:mygetxtemplate/modules/global_binding.dart';
import 'package:mygetxtemplate/modules/initial/initial_page.dart';
import 'routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    theme: CustomTheme.lightThemeData,
    darkTheme: CustomTheme.darkThemeData,
    themeMode: GetStorageKey().getThemeMode(),
    defaultTransition: Transition.cupertino,
    initialBinding: GlobalBinding(),
    getPages: AppPages.pages,
    home: InitialPage(),
  ));
}

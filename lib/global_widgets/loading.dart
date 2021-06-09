import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:mygetxtemplate/core/utils/getStoragedKey.dart';

showLoading() {
  Get.defaultDialog(
      //backgroundColor: Colors.transparent,
      content: SpinKitFadingCircle(
        color: Colors.black,
        size: 30,
      ),
      barrierDismissible: false);
}

dismissLoadingWidget() {
  Get.back();
}

showLoading2() {
  Get.dialog(
    Center(child: CircularProgressIndicator()),
    barrierDismissible: false,
    barrierColor:
        GetStorageKey().isSaveDarkMode() ? Colors.black26 : Colors.white60,
  );
  //await dismissLoadingWidget();
}

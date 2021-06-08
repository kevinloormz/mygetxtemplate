import 'package:get/get.dart';
import 'package:flutter/material.dart';

dismissLoadingWidget() {
  Get.back();
}

showLoading() {
  Get.dialog(
    Center(child: CircularProgressIndicator()),
    barrierDismissible: false,
    barrierColor: Colors.white60,
  );
  //await dismissLoadingWidget();
}

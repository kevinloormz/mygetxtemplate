import 'package:flutter/material.dart';
import 'package:get/get.dart';

showSnackbarerror(String mensaje) {
  Get.snackbar(
    'Error',
    mensaje,
    //snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.white60,
  );
}

showSnackbareok(String mensaje) {
  Get.snackbar(
    'Ok',
    mensaje,
    //snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.white60,
  );
}

import 'package:flutter/material.dart';
import 'package:mygetxtemplate/core/utils/getStorageKey.dart';

class CustomColor {
  var primaryTextColor =
      GetStorageKey().isSaveDarkMode() ? Color(0xDD000000) : Color(0xDDFFFFFF);
  var secondaryTextColor =
      GetStorageKey().isSaveDarkMode() ? Color(0x89FFFFFF) : Color(0x89000000);
  var blackColor = Colors.black;
}

import 'package:flutter/material.dart';
import 'package:mygetxtemplate/core/utils/getStoragedKey.dart';

class CustomColor {
  var primaryTextColor = //dark              //light
      GetStorageKey().isSaveDarkMode() ? Color(0xDD000000) : Color(0xDDFFFFFF);
  var secondaryTextColor =
      GetStorageKey().isSaveDarkMode() ? Color(0x89FFFFFF) : Color(0x89000000);
  var blackAndWhiteColor =
      GetStorageKey().isSaveDarkMode() ? Color(0xDDFFFFFF) : Color(0xDD000000);
}

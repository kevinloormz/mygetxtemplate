import 'package:flutter/material.dart';
//import 'package:get_storage/get_storage.dart';

import 'package:mygetxtemplate/core/utils/getStoragedKey.dart';

class CustomColor {
  var primaryTextColor =
      GetStorageKey().isSaveDarkMode() ? Color(0xDD000000) : Color(0xDDFFFFFF);
  var secondaryTextColor =
      GetStorageKey().isSaveDarkMode() ? Color(0x89FFFFFF) : Color(0x89000000);
  var blackColor = Colors.black;
}

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'package:mygetxtemplate/core/utils/getStoragedKey.dart';

class CustomColor {
  var primaryTextColor = GetStorage().read(GetStorageKey.isDarkMode)
      ? Color(0xDDFFFFFF)
      : Color(0xDD000000);
  var secondaryTextColor = GetStorage().read(GetStorageKey.isDarkMode)
      ? Color(0x89FFFFFF)
      : Color(0x89000000);
  var blackColor = Colors.black;
}

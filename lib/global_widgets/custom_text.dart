//import 'dart:html';

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.data, required this.textStyle})
      : super(key: key);

  final String data;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: textStyle,
      textAlign: TextAlign.center,
    );
  }
}

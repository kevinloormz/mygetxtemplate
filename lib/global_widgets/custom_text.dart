import 'package:flutter/material.dart';

Widget buildText(
    {required String data, required double size, required Color color}) {
  return Text(
    data,
    style: TextStyle(fontSize: size, color: color),
    textAlign: TextAlign.center,
  );
}

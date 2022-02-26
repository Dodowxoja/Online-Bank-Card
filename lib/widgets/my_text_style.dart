import 'package:flutter/material.dart';

class MyTextStyle {
  static TextStyle textStyle({
    Color colors = Colors.white,
    double size = 14,
  }) {
    return TextStyle(color: colors, fontSize: size);
  }
}

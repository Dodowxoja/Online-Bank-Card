import 'package:flutter/material.dart';
import 'package:home/core/constants/color_const.dart';

class ThemeComp {
  static get lightTheme => ThemeData(
        colorScheme: ColorScheme.light(
          brightness: Brightness.light,
          primary: ColorConst.kPCLightTheme,
        ),
      );

  static get darkTheme => ThemeData(
        colorScheme: ColorScheme.dark(
          brightness: Brightness.dark,
          primary: ColorConst.kPCDarkTheme,
        ),
      );
}

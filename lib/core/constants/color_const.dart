import 'package:flutter/material.dart';

class ColorConst {
  static Color kPColorLightTheme = const Color(0xffFFFFFF);
  static Color kPColorDarkTheme = const Color(0xff000000);

  static Color kPColorPicker1 = const Color(0xff414A61);
  static Color kPColorPicker2 = const Color(0xff7485B4);
  static Color kPColorPicker3 = const Color(0xff292929);

  static Color kPColorRadius1 = const Color(0xffDBE3F8);
  static Color kPColorRadius2 = const Color(0xffFFDEE2);
  static Color kPColorRadius3 = const Color(0xffFFE8CE);
  static Color kPColorRadius4 = const Color(0xffEAF5DC);
  static Color kPColorRadius5 = const Color(0xffD3EAFF);
  static Color kPColorRadius6 = const Color(0xffE7DFFF);

  static Color kPColorIcon1 = const Color(0xff031952).withOpacity(0.86);
  static Color kPColorIcon2 = const Color(0xffA32E2E);
  static Color kPColorIcon3 = const Color(0xff46320E).withOpacity(0.8);
  static Color kPColorIcon4 = const Color(0xff45661B);
  static Color kPColorIcon5 = const Color(0xff0C4C87);
  static Color kPColorIcon6 = const Color(0xff4829A8);
  static Color kPColorIcon7 = const Color(0xff213569);

  static Color kPColorElipseRaduis1 = const Color(0xff6A6A6A);

  static Color kPColorElipseIcon1 = const Color(0xffDDDDDD);

  static Color kPColorElipse1 = const Color(0xffB1BEEC);
  static Color kPColorElipse2 = const Color(0xff6C6C6C);

  static Color kPColorLinear1 = const Color(0xff5A6D9E);
  static Color kPColorLinear2 = const Color(0xffBECAF5);

  static LinearGradient kPColorLinearGradient1 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      kPColorLinear1,
      kPColorLinear2,
    ],
  );
}

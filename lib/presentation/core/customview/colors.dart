import 'package:flutter/material.dart';

enum AppColor {
  PRIMARY,
  PRIMARY_DARK,
  ACCENT,
  WHITE,
  SNOW_WHITE,
  TRANSPARENT,
  PRIMARY_TRANSPARENT,
  BLACK,
  GRAY,
  RED,
}

extension AppColorExtension on AppColor {
  static const colors = {
    AppColor.PRIMARY: Color(0xff00BE82),
    AppColor.PRIMARY_DARK: Color(0xff00BE82),
    AppColor.ACCENT: Colors.white,
    AppColor.WHITE: Colors.white,
    AppColor.SNOW_WHITE: Color(0xffF2F2F2),
    AppColor.TRANSPARENT: Colors.transparent,
    AppColor.PRIMARY_TRANSPARENT: Color(0x8000BE82),
    AppColor.BLACK: Colors.black,
    AppColor.GRAY: Color(0xff808589),
    AppColor.RED: Colors.redAccent,
  };

  Color get color => colors[this];
}

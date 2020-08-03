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
  // ignore: missing_return
  Color get  color {
    assert(this != null);

    switch (this) {
      case AppColor.PRIMARY:
        return const Color(0xff00BE82);
      case AppColor.PRIMARY_DARK:
        return const Color(0xff00BE82);
      case AppColor.ACCENT:
        return Colors.white;
      case AppColor.WHITE:
        return Colors.white;
      case AppColor.SNOW_WHITE:
        return const Color(0xffF2F2F2);
      case AppColor.TRANSPARENT:
        return Colors.transparent;
      case AppColor.PRIMARY_TRANSPARENT:
        return const Color(0x8000BE82);
      case AppColor.BLACK:
        return Colors.black;
      case AppColor.RED:
        return Colors.redAccent;
      case AppColor.GRAY:
        return const Color(0xff808589);
    }
  }
}

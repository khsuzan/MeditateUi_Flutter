import 'package:flutter/material.dart';

class MyColor {
  static const darkBlue = Color(0xFF06164C);
  static const navBg = Color(0xFF4F5DF3);
  static const lightBlue = Color(0xFF7D86A5);
  static const card1 = Color(0xFFFC879A);

  static const fcolor1 = Color(0xFF11D79B);
  static const fcolor2 = Color(0xFF8F98FD);
  static const fcolor3 = Color(0xFFF0BD28);
  static const fcolor4 = Color(0xFFF9A27B);

  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}

import 'package:flutter/material.dart';

class Tools {
  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  static List<Color> multiCorlor = [
    Colors.red,
    Colors.amber,
    Colors.green,
    Colors.blue,
  ];
}

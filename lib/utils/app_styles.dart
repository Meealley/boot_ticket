import 'package:flutter/material.dart';

Color primary = const Color.fromARGB(255, 159, 63, 199);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = Colors.black;
  static Color bgColor = Colors.grey.shade200;
  static Color purpleColor = const Color.fromARGB(255, 149, 37, 224);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle =
      TextStyle(fontSize: 25, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headlineStyle2 =
      TextStyle(fontSize: 20, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headlineStyle3 = TextStyle(
      fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}

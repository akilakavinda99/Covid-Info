import 'package:covid_info/r.g.dart';
import 'package:flutter/material.dart';



class AppStyle {
  static TextStyle get textNormal =>
      TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        fontFamily:R.fontFamily.cV
      );
  static TextStyle get textInfo =>
      TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w300,

      );

  static TextStyle get header =>
      TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
          fontFamily:R.fontFamily.cV

      );
  static TextStyle get textdate =>
      TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w400,

      );
  static TextStyle get header2 =>
      TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          fontFamily:R.fontFamily.cV

      );
}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppStyles {
  static const openSans = 'OpenSans';

  /// новые
  static const largeTitle = TextStyle(
    fontSize: 18,
    fontFamily: openSans,
    fontWeight: FontWeight.w700,
  );

  static const navbarText = TextStyle(
    fontSize: 10,
    fontFamily: openSans,
    fontWeight: FontWeight.w400,
  );

  static const text7 = TextStyle(
    fontSize: 7,
    fontFamily: openSans,
  );

  static const monthText = TextStyle(
    fontSize: 14,
    fontFamily: openSans,
    fontWeight: FontWeight.w500,
  );

  static const text13 = TextStyle(
    fontSize: 13,
    fontFamily: openSans,
  );

  static const text18 = TextStyle(
    fontSize: 18,
    fontFamily: openSans,
  );

  static const text16 = TextStyle(
    fontSize: 16,
    fontFamily: openSans,
  );

  static const text12 = TextStyle(
    fontSize: 12,
    fontFamily: openSans,
  );

  static const text14 = TextStyle(
    fontSize: 14,
    fontFamily: openSans,
  );

  /// старые

  static const title = TextStyle(
    fontSize: 32,
    fontFamily: openSans,
  );

  static const title2 = TextStyle(
    fontSize: 28,
    fontFamily: openSans,
    fontWeight: FontWeight.w600,
  );

  static const headline = TextStyle(
    fontSize: 20,
    fontFamily: openSans,
    fontWeight: FontWeight.w600,
  );

  static const headline2 = TextStyle(
    fontSize: 22,
    fontFamily: openSans,
    fontWeight: FontWeight.w600,
    height: 1.5,
  );

  static const body = TextStyle(
    fontSize: 16,
    fontFamily: openSans,
    fontWeight: FontWeight.w600,
  );

  static const plainText = TextStyle(
    fontSize: 16,
    fontFamily: openSans,
  );

  static const plainTextMedium = TextStyle(
    fontSize: 14,
    fontFamily: openSans,
  );

  static const plainTextSmall = TextStyle(
    fontSize: 12,
    fontFamily: openSans,
  );

  static const text22 = TextStyle(
    fontSize: 22,
    fontFamily: openSans,
  );

  static const text24 = TextStyle(
    fontSize: 24,
    fontFamily: openSans,
  );
  static const text30 = TextStyle(
    fontSize: 30,
    fontFamily: openSans,
  );
  static const input = TextStyle(
    fontSize: 16,
    fontFamily: openSans,
  );
  static const button = TextStyle(
    fontSize: 16,
    fontFamily: openSans,
  );
}

extension TextStyleX on TextStyle {
  TextStyle andSize(double size) => copyWith(fontSize: size);
  TextStyle andWeight(FontWeight weight) => copyWith(fontWeight: weight);
  TextStyle andColor(Color color) => copyWith(color: color);
  TextStyle andHeight(double height) => copyWith(height: height);
  TextStyle andOpacity(double opacity) =>
      copyWith(color: color?.withOpacity(opacity));
}

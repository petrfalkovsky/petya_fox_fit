// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:petya_fox_fit/ui/shared/constants/app_colors.dart';

abstract class AppTextStyles {
  const AppTextStyles._();

  static TextStyle get h0Bold => TextStyle(
        fontFamily: 'OpenSans',
        color: AppColors.text.primary,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        fontSize: 44.5,
        height: 1.2,
      );

  static TextStyle get h1Bold => TextStyle(
        fontFamily: 'OpenSans',
        color: AppColors.text.primary,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        fontSize: 28,
        height: 1.2,
      );

  static TextStyle get h1SemiBold => TextStyle(
        fontFamily: 'OpenSans',
        color: AppColors.text.primary,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );

  static TextStyle get b1Bold => TextStyle(
        fontFamily: 'OpenSans',
        color: AppColors.text.primary,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        fontSize: 17,
        height: 1.2,
      );

  static TextStyle get b1 => TextStyle(
        fontFamily: 'OpenSans',
        color: AppColors.text.primary,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 17,
        height: 1.2,
      );

  static TextStyle get b1Regular => TextStyle(
        fontFamily: 'OpenSans',
        color: AppColors.text.primary,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 17,
        height: 1.2,
      );

  static TextStyle get b2SemiBold => TextStyle(
        fontFamily: 'OpenSans',
        color: AppColors.text.primary,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 15,
        height: 1,
      );

  static TextStyle get b2Regular => TextStyle(
        fontFamily: 'OpenSans',
        color: AppColors.text.primary,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 15,
        height: 1,
      );

  static TextStyle get b3Medium => TextStyle(
        fontFamily: 'OpenSans',
        color: AppColors.text.primary,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 13,
        height: 1.4,
      );

  static TextStyle get b3Regular => TextStyle(
        fontFamily: 'OpenSans',
        color: AppColors.text.primary,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 13,
        height: 1.2,
      );

  static TextStyle get captionMob => TextStyle(
        fontFamily: 'OpenSans',
        color: AppColors.text.primary,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 11,
        height: 1,
      );

  static TextStyle get OpenSans => TextStyle(
        fontFamily: 'OpenSans',
        color: AppColors.text.primary,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 15,
        height: 1.4,
      );
}

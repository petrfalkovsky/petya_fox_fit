// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:petya_fox_fit/ui/shared/constants/app_text_style.dart';

abstract class AppTextTheme {
  const AppTextTheme();

  static AppTextTheme get fromPlatform => const BaseAppTextTheme();

  /// Font: OpenSans
  String get fontFamily;

  /// H1 Bold OpenSans 44.5
  TextStyle get h0_0;

  /// H1 Bold OpenSans 28
  TextStyle get h1_0;

  /// H1 SemiBold OpenSans 24
  TextStyle get h1_1;

  /// B1 Bold OpenSans 17
  TextStyle get b1_0;

  /// B1 Medium OpenSans 17
  TextStyle get b1;

  /// B1 OpenSans 17
  TextStyle get b1_1;

  /// B1 Regular OpenSans 17
  TextStyle get b1_2;

  /// B2 SemiBold OpenSans 15
  TextStyle get b2_0;

  /// B2 Regular OpenSans 15
  TextStyle get b2_1;

  /// B3 Medium OpenSans 13
  TextStyle get b3_0;

  /// B3 Regular OpenSans 13
  TextStyle get b3_1;

  /// Caption-Mob Regular OpenSans 13
  TextStyle get captionMob;

  /// OpenSans Regular OpenSans 13
  TextStyle get OpenSans;
}

class BaseAppTextTheme extends AppTextTheme {
  const BaseAppTextTheme();

  @override
  String get fontFamily => 'OpenSans';

  @override
  TextStyle get h0_0 => AppTextStyles.h0Bold;

  @override
  TextStyle get h1_0 => AppTextStyles.h1Bold;

  @override
  TextStyle get h1_1 => AppTextStyles.h1SemiBold;

  @override
  TextStyle get b1_0 => AppTextStyles.b1Bold;

  @override
  TextStyle get b1 => AppTextStyles.b1Bold;

  @override
  TextStyle get b1_1 => AppTextStyles.b1;

  @override
  TextStyle get b1_2 => AppTextStyles.b1Regular;

  @override
  TextStyle get b2_0 => AppTextStyles.b2SemiBold;

  @override
  TextStyle get b2_1 => AppTextStyles.b2Regular;

  @override
  TextStyle get b3_0 => AppTextStyles.b3Medium;

  @override
  TextStyle get b3_1 => AppTextStyles.b3Regular;

  @override
  TextStyle get captionMob => AppTextStyles.captionMob;

  @override
  TextStyle get OpenSans => AppTextStyles.OpenSans;
}

extension ThemeX on ThemeData {
  AppTextTheme get appTextTheme => AppTextTheme.fromPlatform;
}

// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors._();

  static _AccentColors accent = const _AccentColors(
    0xFF74788E,
    <int, Color>{
      /// новые цвета
      // кнопки, элементы таблоидов всяких
      1: Color(0xFFFE5900),

      /// старые цвета
      // сердечки всякие
      2: Color(0xFFFF2E9F),
      // чашки всякие
      3: Color(0xFFF6980B),
      // воздух например
      4: Color(0xFF00D1FF),
      // неактивный элемент
      5: Color(0xFFA1A1A1),
      // зеленое что-то, типа микрофона
      6: Color(0xFF267B2F),
      // виджет звонка темный фиолетовый для градиента
      7: Color(0xFF191225),
      // виджет звонка светлый фиолетовый для градиента
      8: Color(0xFF48296D),
      // алерты что кончается топливо, например
      9: Color(0xFFFF4342),
    },
  );

  static Gradient get accentGradient {
    return LinearGradient(
      colors: [accent.accent1, const Color(0xFF1DB9DD)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );
  }

  static _TextColors text = const _TextColors(
    0xFF333E63,
    <int, Color>{
      /// новые
      // primary
      1: Color(0xFFFAFAFA),
      // неактивный текст
      2: Color(0xFF3A4060),
      // неактивный текст в набаре
      3: Color(0xFF74788E),
      // активный текст в набаре
      4: Color(0xFFFE5900),
      // неактивный месяц
      5: Color(0xFF2793DA),

      /// старые

      // алерт в уведомлениях (таймер) - 3
      6: Color(0xFFED4520),
    },
  );
  static _NotificationColors notification = const _NotificationColors(
    0xFFEB5E6C,
    <int, Color>{
      1: Color(0xFFEB5E6C),
      2: Color(0xFFFFF3F4),
      3: Color(0xFF48A36D),
    },
  );
  static _BackgroundColors background = const _BackgroundColors(
    0xFFFFFFFF,
    <int, Color>{
      /// новые цвета
      // светло-фиолетовый
      1: Color(0xFFFAF9F8),
      // уведомления
      2: Color(0xFFFF1F00),
      // активный месяц
      3: Color(0xFF2793DA),
      // неактивный месяц
      4: Color(0xFFFAFAFA),
      // темный-синий градиент
      5: Color(0xFF3C4262),
      // светло-фиолетовый градиент
      6: Color(0xFF4D547B),
      // темный-оранжевый градиент
      7: Color(0xFFDF5304),
      // светло-оранжевый градиент
      8: Color(0xFFFBAB02),
      // темный-оранжевый градиент, средняя остановка
      9: Color(0xFFF15E02),

      /// старые цвета

      // фон звонка
      10: Color(0xFF65C466),
      // фон кнопки оружия
      11: Color(0xFF267B2F),
    },
  );
}

abstract class AbstractAppColors {
  const AbstractAppColors();

  _AccentColors get accent;

  _TextColors get text;

  _NotificationColors get notification;

  _BackgroundColors get background;
}

class AppColorsLight implements AbstractAppColors {
  const AppColorsLight();

  @override
  _AccentColors get accent => AppColors.accent;

  @override
  _BackgroundColors get background => AppColors.background;

  @override
  _NotificationColors get notification => AppColors.notification;

  @override
  _TextColors get text => AppColors.text;
}

class _AccentColors extends ColorSwatch<int> {
  const _AccentColors(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  Color get accent1 => this[1]!;

  Color get accent2 => this[2]!;
}

class _TextColors extends ColorSwatch<int> {
  const _TextColors(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  Color get primary => this[1]!;

  Color get secondary => this[2]!;

  Color get card => this[3]!;

  Color get secondaryTwo => this[4]!;
}

class _NotificationColors extends ColorSwatch<int> {
  const _NotificationColors(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  Color get error => this[1]!;

  Color get errorLight => this[2]!;

  Color get success => this[3]!;
}

class _BackgroundColors extends ColorSwatch<int> {
  const _BackgroundColors(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  Color get bgB1 => this[1]!;

  Color get bgB2 => this[2]!;

  Color get divider => this[3]!;
}

class OtherColors {
  const OtherColors();

  Color get black => const Color(0xFF101113);

  Color get transparent => Colors.transparent;

  Color get white => Colors.white;

  Color get grey => const Color(0xffA4A8AB);
}

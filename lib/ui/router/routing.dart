import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:petya_fox_fit/ui/screens/statistic/statistic_exports.dart';
import 'package:petya_fox_fit/ui/screens/splash/splash.dart';
import 'package:petya_fox_fit/ui/screens/start/src/start_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String authWelcome = '/authWelcome';
  static const String start = '/start';

  static navigator(RouteSettings settings) {
    debugPrint('RouteSettings  $settings');
  }
}

final List<GetPage> routes = [
  GetPage(
    name: AppRoutes.splash,
    page: () => SplashScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.authWelcome,
    page: () => HudScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.start,
    page: () => Start(),
    transition: Transition.fadeIn,
  ),
];

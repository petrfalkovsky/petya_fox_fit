import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:petya_fox_fit/ui/screens/statistic/statistic_exports.dart';
import 'package:petya_fox_fit/ui/screens/splash/splash.dart';
import 'package:petya_fox_fit/ui/screens/start/src/clients_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String authWelcome = '/authWelcome';
  static const String statistic = '/start';
  static const String clients = '/start';

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
    page: () => StatisticScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.statistic,
    page: () => StatisticScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.clients,
    page: () => Clients(),
    transition: Transition.fadeIn,
  ),
];

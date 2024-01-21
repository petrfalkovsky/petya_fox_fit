import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcons {
  static const _basePathIcons = 'assets/icons';
  static const _basePathImg = 'assets/images';
  static const AssetImage background =
      AssetImage('$_basePathImg/splash_screen_bg.png');
  static const AssetImage appBarBackground =
      AssetImage('$_basePathImg/appbar_frame.png');

  /// использовать свг иконки
  /// AppIcons.svgWidget(AppIcons.map, width: 26),
  /// новые
  static const stat = '$_basePathIcons/stat.svg';
  static const profile = '$_basePathIcons/profile.svg';
  static const schedule = '$_basePathIcons/schedule.svg';
  static const funnel = '$_basePathIcons/funnel.svg';
  static const more = '$_basePathIcons/more.svg';
  static const notification = '$_basePathIcons/notification.svg';
  static const wallet = '$_basePathIcons/wallet.svg';
  static const receipt = '$_basePathIcons/receipt.svg';

  /// использовать пнг изображения
  /// Image.asset(AppIcons.wallet),
  // старые
  static const infoBackPNG = '$_basePathImg/info_back.png';

  static Widget svgWidget(String path,
      {double? width, double? height, Color? color}) {
    return SvgPicture.asset(
      path,
      width: width,
      height: height,
      color: color,
    );
  }
}

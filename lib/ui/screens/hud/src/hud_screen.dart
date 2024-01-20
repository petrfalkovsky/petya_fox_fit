import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:petya_fox_fit/ui/shared/themes/app_colors_theme.dart';
import 'package:petya_fox_fit/ui/shared/themes/app_text_theme.dart';
import 'package:get/get.dart' hide Trans;
import 'package:petya_fox_fit/core/global_instans.dart/app_globals.dart';
import 'package:petya_fox_fit/ui/screens/hud/hud_exports.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';
import 'package:petya_fox_fit/ui/shared/shared_exports.dart';

class HudScreen extends StatexWidget<HudController> {
  HudScreen({Key? key}) : super(() => HudController(), key: key) {
    debugPrint('welcome_screen'.tr());
  }

  @override
  Widget buildWidget(BuildContext context) {
    final textTheme = AppTextTheme.fromPlatform;

    return GeneralScaffold(
      backgroundColor: const AppColorsThemeLight().other.white,
      navBarEnable: true,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text('allMyReservations'.tr(), style: textTheme.h1_1),
            ),
          ],
        ),
      ),
      child: Column(
        children: [
          const SizedBox.shrink(),
          5.h,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
              child: PageView(
                physics: const BouncingScrollPhysics(),
                children: [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

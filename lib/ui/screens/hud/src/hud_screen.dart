// ignore_for_file: unused_import

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:petya_fox_fit/ui/screens/hud/widgets/category_list.dart';
import 'package:petya_fox_fit/ui/shared/themes/app_colors_theme.dart';
import 'package:get/get.dart' hide Trans;
import 'package:petya_fox_fit/ui/screens/hud/hud_exports.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';
import 'package:petya_fox_fit/ui/shared/shared_exports.dart';

class HudScreen extends StatexWidget<HudController> {
  HudScreen({Key? key}) : super(() => HudController(), key: key) {
    debugPrint('welcome_screen'.tr());
  }

  @override
  Widget buildWidget(BuildContext context) {
    final GlobalKey<MonthsLabelsState> categoryLabelsKey = GlobalKey();

    return GeneralScaffold(
      backgroundColor: const AppColorsThemeLight().other.white,
      navBarEnable: true,
      appBar: AppBar(
        backgroundColor: AppColors.background[4],
        centerTitle: false,
        actions: [
          Stack(
            children: [
              AppIcons.svgWidget(AppIcons.notification, height: 21),
              Transform.translate(
                offset: const Offset(6, -6.5),
                child: Stack(
                  children: [
                    Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        color: AppColors.background[2],
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Transform.translate(
                          offset: const Offset(0, -1),
                          child: Text(
                            "42",
                            textAlign: TextAlign.center,
                            style: AppStyles.text7
                                .andColor(
                                    AppColors.text[1] ?? Colors.transparent)
                                .andWeight(FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          26.w,
        ],
        title: Text(
          'statistic'.tr(),
          style: AppStyles.largeTitle.andColor(AppColors.text),
        ),
        elevation: 0,
        toolbarHeight: 72,
        automaticallyImplyLeading: false,
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
      child: Column(
        children: [
          39.h,
          MonthsLabels(
            key: categoryLabelsKey,
            onMonthSelected: (monthId) {
              debugPrint('Выбранный месяц: $monthId');
            },
            outerPadding: 20,
            currentMonthId: '1',
          ),
          25.h,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 13, right: 13, top: 15, bottom: 8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.background[5] ?? Colors.transparent,
                          AppColors.background[6] ?? Colors.transparent,
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppIcons.svgWidget(AppIcons.wallet, width: 24),
                          14.h,
                          Text(
                            "Продажи: 34 шт",
                            textAlign: TextAlign.center,
                            style: AppStyles.text13
                                .andColor(
                                    AppColors.text[1] ?? Colors.transparent)
                                .andWeight(FontWeight.w500),
                          ),
                          Transform.translate(
                            offset: const Offset(0, -3),
                            child: Row(
                              children: [
                                Text(
                                  "156 000",
                                  textAlign: TextAlign.center,
                                  style: AppStyles.text18
                                      .andColor(AppColors.text[1] ??
                                          Colors.transparent)
                                      .andWeight(FontWeight.bold),
                                ),
                                Text(
                                  " ₽",
                                  textAlign: TextAlign.center,
                                  style: AppStyles.text18
                                      .andColor(AppColors.text[1] ??
                                          Colors.transparent)
                                      .andWeight(FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
                8.w,
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 13, right: 13, top: 15, bottom: 8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.background[7] ?? Colors.transparent,
                          AppColors.background[9] ?? Colors.transparent,
                          AppColors.background[8] ?? Colors.transparent,
                        ],
                        stops: const [0.0, 0.45, 1.0],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppIcons.svgWidget(AppIcons.receipt, width: 24),
                          14.h,
                          Text(
                            "Реализация: 38 шт",
                            textAlign: TextAlign.center,
                            style: AppStyles.text13
                                .andColor(
                                    AppColors.text[1] ?? Colors.transparent)
                                .andWeight(FontWeight.w500),
                          ),
                          Transform.translate(
                            offset: const Offset(0, -3),
                            child: Row(
                              children: [
                                Text(
                                  "176 000",
                                  textAlign: TextAlign.center,
                                  style: AppStyles.text18
                                      .andColor(AppColors.text[1] ??
                                          Colors.transparent)
                                      .andWeight(FontWeight.bold),
                                ),
                                Text(
                                  " ₽",
                                  textAlign: TextAlign.center,
                                  style: AppStyles.text18
                                      .andColor(AppColors.text[1] ??
                                          Colors.transparent)
                                      .andWeight(FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          )
          // Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
          //     child: PageView(
          //       physics: const BouncingScrollPhysics(),
          //       children: [],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

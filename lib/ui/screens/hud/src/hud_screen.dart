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
          const SizedBox.shrink(),
          5.h,
          Row(
            children: [
              Container(
                height: 103,
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 16),
                decoration: BoxDecoration(
                  color: AppColors.background[3],
                  borderRadius: BorderRadius.circular(12),
                ),
                // child: Column(children:

                // ),
              ),
            ],
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

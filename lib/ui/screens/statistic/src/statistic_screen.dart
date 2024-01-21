// ignore_for_file: unused_import

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:petya_fox_fit/ui/shared/themes/app_colors_theme.dart';
import 'package:get/get.dart' hide Trans;
import 'package:petya_fox_fit/ui/screens/statistic/statistic_exports.dart';
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
          const NotificationWidget(),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              // два блока с данными о выручке
              const SalesStats(),
              40.h,
              // заголовок рейтинга
              const RatingHead(),
              18.h,
              // контент рейтинга
              const RatingList(
                salesLabelText: 'По продажам ',
                positionLabelText: '26 место',
                requiredAmountLabelText: 'Нужно 14 000 до 26 места',
                salesLabelText2: 'По реализации ',
                positionLabelText2: '25 место',
                requiredAmountLabelText2: 'Нужно 18 000 до 25 места',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RatingHead extends StatelessWidget {
  const RatingHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        'Рейтинг'.tr(),
        style: AppStyles.largeTitle.andColor(AppColors.text),
      ),
    );
  }
}

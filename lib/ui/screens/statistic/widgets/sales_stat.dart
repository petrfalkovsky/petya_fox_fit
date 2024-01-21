import 'package:flutter/material.dart';
import 'package:petya_fox_fit/ui/shared/shared_exports.dart';

class SalesStats extends StatelessWidget {
  const SalesStats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                          .andColor(AppColors.text[1] ?? Colors.transparent)
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
                                .andColor(
                                    AppColors.text[1] ?? Colors.transparent)
                                .andWeight(FontWeight.bold),
                          ),
                          Text(
                            " ₽",
                            textAlign: TextAlign.center,
                            style: AppStyles.text18
                                .andColor(
                                    AppColors.text[1] ?? Colors.transparent)
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
                          .andColor(AppColors.text[1] ?? Colors.transparent)
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
                                .andColor(
                                    AppColors.text[1] ?? Colors.transparent)
                                .andWeight(FontWeight.bold),
                          ),
                          Text(
                            " ₽",
                            textAlign: TextAlign.center,
                            style: AppStyles.text18
                                .andColor(
                                    AppColors.text[1] ?? Colors.transparent)
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
    );
  }
}

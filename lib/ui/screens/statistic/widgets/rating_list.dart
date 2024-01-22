import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:petya_fox_fit/ui/shared/shared_exports.dart';

class RatingList extends StatelessWidget {
  const RatingList({
    Key? key,
    this.salesLabelText,
    this.positionLabelText,
    this.requiredAmountLabelText,
    this.salesLabelText2,
    this.positionLabelText2,
    this.requiredAmountLabelText2,
  }) : super(key: key);

  final String? salesLabelText;
  final String? positionLabelText;
  final String? requiredAmountLabelText;
  final String? salesLabelText2;
  final String? positionLabelText2;
  final String? requiredAmountLabelText2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.background,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.04),
            spreadRadius: 8,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        salesLabelText ?? 'Ввести текст'.tr(),
                        style: AppStyles.text16.andColor(AppColors.text),
                      ),
                      Text(
                        positionLabelText ?? 'какое-то место'.tr(),
                        style: AppStyles.largeTitle.andColor(AppColors.text),
                      ),
                    ],
                  ),
                  4.h,
                  Text(
                    requiredAmountLabelText ??
                        'Что нужно сделать до места'.tr(),
                    style: AppStyles.text12
                        .andColor(AppColors.text)
                        .andOpacity(0.7),
                  ),
                ],
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.text,
                size: 16,
              )
            ],
          ),
          4.h,
          Divider(color: AppColors.accent[2]),
          4.h,
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        salesLabelText2 ?? 'Ввести текст'.tr(),
                        style: AppStyles.text16.andColor(AppColors.text),
                      ),
                      Text(
                        positionLabelText2 ?? 'какое-то место'.tr(),
                        style: AppStyles.largeTitle.andColor(AppColors.text),
                      ),
                    ],
                  ),
                  4.h,
                  Text(
                    requiredAmountLabelText2 ??
                        'Нужно 14 000 ₽ до 25 места'.tr(),
                    style: AppStyles.text12
                        .andColor(AppColors.text)
                        .andOpacity(0.7),
                  ),
                ],
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.text,
                size: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

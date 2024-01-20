// ignore_for_file: unused_import

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart' hide Trans;
import 'package:petya_fox_fit/ui/shared/constants/app_colors.dart';
import 'package:petya_fox_fit/ui/shared/ext.dart';
import 'package:petya_fox_fit/ui/shared/themes/app_colors_theme.dart';
import 'package:petya_fox_fit/ui/shared/widgets/general_scaffold/src/custom_bottom_appbar.dart';
import 'package:petya_fox_fit/ui/shared/widgets/general_scaffold/src/general_scaffold_service.dart';

@immutable
class BottomAppBarItem {
  final String text;
  final String iconAsset;
  final String router;

  const BottomAppBarItem({
    required this.text,
    required this.iconAsset,
    required this.router,
  });
}

class CustomBottomAppBar extends GetView<GeneralScaffoldService> {
  const CustomBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 73,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      color: AppColors.background[1],
      elevation: 0,
      shape: const CircularNotchedRectangle(),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: List.generate(
                  controller.bottomAppBarItems.length,
                  (index) {
                    final item = controller.bottomAppBarItems[index];

                    return Expanded(
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () => controller.goToPage(index),
                        child: _BottomAppBarButton(
                          text: item.text,
                          iconAsset: item.iconAsset,
                          isSelected: index == controller.currentNavIndex$,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomAppBarButton extends StatelessWidget {
  final String text;
  final String iconAsset;
  final bool isSelected;

  const _BottomAppBarButton({
    required this.text,
    required this.iconAsset,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unselectedColor = AppColors.accent;
    final selectedColor = AppColors.accent[1];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SvgPicture.asset(
          iconAsset,
          color: isSelected ? selectedColor : unselectedColor,
          height: 23.17,
        ),
        4.h,
        Text(
          text.tr(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isSelected ? selectedColor : unselectedColor,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 10,
            // letterSpacing: 0.2,
            fontFamily: "OpenSans",
          ),
        ),
      ],
    );
  }
}

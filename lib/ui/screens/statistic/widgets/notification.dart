import 'package:flutter/material.dart';
import 'package:petya_fox_fit/ui/shared/shared_exports.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                          .andColor(AppColors.text[1] ?? Colors.transparent)
                          .andWeight(FontWeight.w800),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

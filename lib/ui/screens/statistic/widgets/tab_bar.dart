import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petya_fox_fit/ui/shared/shared_exports.dart';

typedef StringCallback = void Function(String);

class PoiTypeSlider extends StatefulWidget {
  final StringCallback deliveryMethodChanged;

  const PoiTypeSlider({Key? key, required this.deliveryMethodChanged})
      : super(key: key);

  @override
  State<PoiTypeSlider> createState() => _PoiTypeSliderState();
}

class _PoiTypeSliderState extends State<PoiTypeSlider> {
  String _selectedTabId = 'services';
  final Map<String, Widget> _sliderItems = {};

  @override
  void initState() {
    super.initState();
    _createSelectorItems();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: screenWidth,
            child: CupertinoSlidingSegmentedControl<String>(
              padding: const EdgeInsets.all(5),
              backgroundColor: AppColors.background[4] ?? Colors.transparent,
              children: _sliderItems,
              groupValue: _selectedTabId,
              onValueChanged: (String? newValue) {
                if (newValue == null) return;

                setState(() {
                  _selectedTabId = newValue;
                });

                widget.deliveryMethodChanged(newValue);
              },
            ),
          ),
        ),
        11.h,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: IndexedStack(
            index: _sliderItems.keys.toList().indexOf(_selectedTabId),
            children: [
              _buildTabContent('services'),
              const PlaceholderMaintaince(),
              const PlaceholderMaintaince(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTabContent(String tabId) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Container(
              height: 58,
              padding: const EdgeInsets.symmetric(horizontal: 16),
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '5 шт '.tr(),
                    style: AppStyles.text14
                        .andColor(AppColors.text)
                        .andWeight(FontWeight.bold),
                  ),
                  Text(
                    '1ПТ 45мин Мастер Аква'.tr(),
                    style: AppStyles.text14.andColor(AppColors.text),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _createSelectorItems() {
    final idList = ['services', 'write_off_history', 'sales_history'];

    for (String id in idList) {
      String title = '';
      if (id == 'services') {
        title = 'services'.tr();
      } else if (id == 'write_off_history') {
        title = 'write_off_history'.tr();
      } else if (id == 'sales_history') {
        title = 'sales_history'.tr();
      }

      _sliderItems[id] = SizedBox(
        height: 41,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Align(
            alignment: Alignment.center,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: AppStyles.text13
                    .andColor(AppColors.text[2] ?? Colors.transparent),
              ),
            ),
          ),
        ),
      );
    }
  }
}

class PlaceholderMaintaince extends StatelessWidget {
  const PlaceholderMaintaince({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Раздел в разработке',
            style: AppStyles.text13
                .andColor(AppColors.text[2] ?? Colors.transparent)
                .andOpacity(0.7),
          ),
        ],
      ),
    );
  }
}

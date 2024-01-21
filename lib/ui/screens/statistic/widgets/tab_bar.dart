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
  String? _selectedMethod;
  final _sliderItems = <String, Widget>{};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _createSelectorItems();

    if (_sliderItems.isEmpty) {
      return const SizedBox();
    }

    _selectedMethod ??= _sliderItems.keys.first;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: CupertinoSlidingSegmentedControl<String>(
          backgroundColor: AppColors.background[4] ?? Colors.transparent,
          children: _sliderItems,
          groupValue: _selectedMethod,
          padding: const EdgeInsets.all(5),
          onValueChanged: (String? deliveryMethodId) {
            if (deliveryMethodId == null) {
              return;
            }
            setState(() {
              _selectedMethod = deliveryMethodId;
            });
            widget.deliveryMethodChanged(deliveryMethodId);
          },
        ),
      ),
    );
  }

  void _createSelectorItems() {
    final idList = ['services', 'write_off_history', 'sales_history'];

    for (final id in idList) {
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
              ),
            ),
          ),
        ),
      );
    }
  }
}

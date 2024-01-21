// ignore_for_file: unused_field, no_leading_underscores_for_local_identifiers, depend_on_referenced_packages

import 'dart:collection';
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:petya_fox_fit/ui/shared/shared_exports.dart';
import 'package:tuple/tuple.dart';

class MonthsLabels extends StatefulWidget {
  final Function(String) onMonthSelected;
  final double outerPadding;
  final String currentMonthId;

  const MonthsLabels({
    required Key key,
    this.outerPadding = 100,
    required this.onMonthSelected,
    required this.currentMonthId,
  }) : super(key: key);

  @override
  MonthsLabelsState createState() => MonthsLabelsState();
}

class MonthsLabelsState extends State<MonthsLabels> {
  final ScrollController _controller = ScrollController();
  late String _currentMonthId;
  late double _screenWidth;

  final List<Tuple2<String, String>> _monthList = [];
  final Map<String, String> _mapChildToParent = HashMap();
  final HashMap<String, GlobalKey> _keys = HashMap();

  Widget _renderItemCategory({
    required BuildContext context,
    required String monthId,
    required String monthName,
    required GlobalKey key,
  }) {
    return GestureDetector(
      child: KeyedSubtree(
        key: key,
        child: Container(
          height: 36,
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 0),
          decoration: BoxDecoration(
            color: _currentMonthId == monthId
                ? AppColors.background[3]
                : AppColors.background[4],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              monthName,
              style: _currentMonthId == monthId
                  ? AppStyles.monthText
                      .andColor(AppColors.text[1] ?? Colors.transparent)
                  : AppStyles.monthText
                      .andColor(AppColors.background[3] ?? Colors.transparent),
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      onTap: () {
        if (_currentMonthId != monthId) {
          setState(() {
            _currentMonthId = monthId;
          });

          _makeLabelCentered(key);
        }
        widget.onMonthSelected(monthId);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _listCategoryWidgets = [];
    _listCategoryWidgets.add(SizedBox(width: widget.outerPadding));
    if (_monthList.isNotEmpty) {
      for (var i = 0; i < _monthList.length; i++) {
        final item = _monthList[i];
        _listCategoryWidgets.add(_renderItemCategory(
          context: context,
          monthId: item.item1,
          monthName: item.item2,
          key: _keys[item.item1] ?? GlobalKey(),
        ));
        if (i < _monthList.length - 1) {
          _listCategoryWidgets.add(const SizedBox(width: 3));
        }
      }
    }
    _listCategoryWidgets.add(SizedBox(width: widget.outerPadding));

    return ExcludeSemantics(
      child: Container(
        height: 45.0,
        alignment: Alignment.topRight,
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: SingleChildScrollView(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _listCategoryWidgets,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _currentMonthId = widget.currentMonthId;

    // мок списка месяцев
    _monthList.addAll([
      Tuple2('1', 'december'.tr()),
      Tuple2('2', 'january'.tr()),
      Tuple2('4', 'february'.tr()),
      Tuple2('3', 'march'.tr()),
      Tuple2('5', 'april'.tr()),
      Tuple2('6', 'may'.tr()),
      Tuple2('7', 'june'.tr()),
      Tuple2('8', 'july'.tr()),
      Tuple2('9', 'august'.tr()),
      Tuple2('10', 'september'.tr()),
      Tuple2('11', 'october'.tr()),
      Tuple2('12', 'november'.tr()),
    ]);

    for (var t in _monthList) {
      var parentCategory = t.item1;
      var children = ['Child1', 'Child2', 'Child3'];
      for (var c in children) {
        _mapChildToParent[c] = parentCategory;
      }
      _keys[parentCategory] = GlobalKey();
    }
  }

  void _makeLabelCentered(GlobalKey labelKey) {
    debugPrint('Label centered');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

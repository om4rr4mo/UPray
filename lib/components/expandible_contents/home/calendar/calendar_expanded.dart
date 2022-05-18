import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CalendarExpanded extends StatefulWidget {
  const CalendarExpanded({Key? key}) : super(key: key);

  @override
  State<CalendarExpanded> createState() => _CalendarExpandedState();
}

class _CalendarExpandedState extends State<CalendarExpanded> {
  @override
  Widget build(BuildContext context) {
    return SfDateRangePicker(
      headerStyle: const DateRangePickerHeaderStyle(
        textAlign: TextAlign.center,
        textStyle: TextStyle(
          color: Color(0xFF613459),
          fontWeight: FontWeight.bold,
        ),
      ),
      monthViewSettings: const DateRangePickerMonthViewSettings(
        firstDayOfWeek: 1,
        viewHeaderStyle: DateRangePickerViewHeaderStyle(
          textStyle: TextStyle(
            color: Color(0xFF863464),
          ),
        ),
      ),
      selectionColor: const Color(0xFF613459),
      selectionShape: DateRangePickerSelectionShape.rectangle,
      selectionTextStyle: const TextStyle(
        color: Color(0xFFDB8787),
        fontWeight: FontWeight.bold,
      ),
      showNavigationArrow: true,
      todayHighlightColor: const Color(0xFF613459),
      toggleDaySelection: true,
    );
  }
}

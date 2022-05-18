import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CalendarCollapsed extends StatefulWidget {
  const CalendarCollapsed({Key? key}) : super(key: key);

  @override
  State<CalendarCollapsed> createState() => _CalendarCollapsedState();
}

class _CalendarCollapsedState extends State<CalendarCollapsed> {
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
        numberOfWeeksInView: 1,
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
      todayHighlightColor: const Color(0xFF613459),
      toggleDaySelection: true,
    );
  }
}

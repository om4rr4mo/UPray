import 'package:flutter/material.dart';
import 'package:upray/static_files/variables.dart';

class CalcMethodCollapsed extends StatefulWidget {
  const CalcMethodCollapsed({Key? key}) : super(key: key);

  @override
  State<CalcMethodCollapsed> createState() => _CalcMethodCollapsedState();
}

class _CalcMethodCollapsedState extends State<CalcMethodCollapsed> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(currentCalculationMethod.name));
  }
}

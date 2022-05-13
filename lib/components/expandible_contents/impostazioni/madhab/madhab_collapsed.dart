import 'package:flutter/material.dart';
import 'package:upray/static_files/variables.dart';

class MadhabCollapsed extends StatefulWidget {
  const MadhabCollapsed({Key? key}) : super(key: key);

  @override
  State<MadhabCollapsed> createState() => _MadhabCollapsedState();
}

class _MadhabCollapsedState extends State<MadhabCollapsed> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(currentMadhab.name));
  }
}

import 'package:flutter/material.dart';
import 'package:upray/utility/variables.dart';

class LanguageCollapsed extends StatefulWidget {
  const LanguageCollapsed({Key? key}) : super(key: key);

  @override
  State<LanguageCollapsed> createState() => _LanguageCollapsedState();
}

class _LanguageCollapsedState extends State<LanguageCollapsed> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(currentLanguage.name));
  }
}

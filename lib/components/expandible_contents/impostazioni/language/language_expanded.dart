import 'package:flutter/material.dart';
import 'package:upray/static_files/variables.dart';

class LanguageExpanded extends StatefulWidget {
  const LanguageExpanded({Key? key}) : super(key: key);

  @override
  State<LanguageExpanded> createState() => _LanguageExpandedState();
}

class _LanguageExpandedState extends State<LanguageExpanded> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: LanguageEnum.values.map((LanguageEnum classType) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentLanguage = classType;
                      });
                    },
                    child: AnimatedContainer(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: classType.name == currentLanguage.name ? null : Border.all(color: const Color(0xFF8D4EAC), width: 2),
                        color: classType.name == currentLanguage.name ? const Color(0xFF8D4EAC) : const Color(0x008D4EAC),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 400,
                      height: 40,
                      duration: const Duration(milliseconds: 200),
                      child: Text(classType.name),
                    ),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upray/utility/variables.dart';

class CalcMethodExpanded extends StatefulWidget {
  const CalcMethodExpanded({Key? key}) : super(key: key);

  @override
  State<CalcMethodExpanded> createState() => _CalcMethodExpandedState();
}

class _CalcMethodExpandedState extends State<CalcMethodExpanded> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Text(
              "seleziona il metodo di calcolo",
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: CalculationMethodEnum.values.map((CalculationMethodEnum classType) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentCalculationMethod = classType;
                      });
                    },
                    child: AnimatedContainer(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: classType.name == currentCalculationMethod.name ? null : Border.all(color: const Color(0xFF8D4EAC), width: 2),
                        color: classType.name == currentCalculationMethod.name ? const Color(0xFF8D4EAC) : const Color(0x008D4EAC),
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

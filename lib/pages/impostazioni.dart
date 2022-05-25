import 'package:flutter/material.dart';
import 'package:upray/components/expandible_contents/impostazioni/calculation_method/calculation_method_collapsed.dart';
import 'package:upray/components/expandible_contents/impostazioni/calculation_method/calculation_method_expanded.dart';
import 'package:upray/components/expandible_contents/impostazioni/language/language_collapsed.dart';
import 'package:upray/components/expandible_contents/impostazioni/language/language_expanded.dart';
import 'package:upray/components/expandible_contents/impostazioni/madhab/madhab_expanded.dart';
import 'package:upray/utility/variables.dart';

import '../components/expandible_container.dart';
import '../components/expandible_contents/impostazioni/madhab/madhab_collapsed.dart';

class Impostazioni extends StatefulWidget {
  const Impostazioni({Key? key}) : super(key: key);

  @override
  State<Impostazioni> createState() => _ImpostazioniState();
}

class _ImpostazioniState extends State<Impostazioni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              //Container per la scelta del madhab
              GestureDetector(
                onTap: () {
                  setState(() {
                    madhabCollapsed = !madhabCollapsed;
                    if (!madhabCollapsed) {
                      calculationMethodCollapsed = true;
                      languageCollapsed = true;
                    }
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  height: madhabCollapsed ? MediaQuery.of(context).size.height * 0.12 : MediaQuery.of(context).size.height * 0.21,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xFFDF888F),
                    borderRadius: BorderRadius.circular(bigBorderRadius),
                  ),
                  padding: const EdgeInsets.all(10),
                  curve: Curves.fastOutSlowIn,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AnimatedCrossFade(
                        firstChild: Container(
                          width: 500,
                          alignment: Alignment.center,
                          child: const Text("Madhab"),
                        ),
                        secondChild: Container(
                          width: 500,
                          alignment: Alignment.center,
                          child: const Text("Seleziona il madhab"),
                        ),
                        crossFadeState: madhabCollapsed ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                        duration: const Duration(milliseconds: 200),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ExpandibleContainer(
                        onTap: () {
                          setState(() {
                            madhabCollapsed = !madhabCollapsed;
                            if (!madhabCollapsed) {
                              calculationMethodCollapsed = true;
                              languageCollapsed = true;
                            }
                          });
                        },
                        borderRadius: smallBorderRadius,
                        collapsed: madhabCollapsed,
                        collapsedHeight: MediaQuery.of(context).size.height * 0.06,
                        expandedHeight: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width,
                        bgColor: const Color(0xFFF9E8E0),
                        collapsedContent: const MadhabCollapsed(),
                        expandedContent: const MadhabExpanded(),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Container per la scelta del metodo di calcolo
              GestureDetector(
                onTap: () {
                  setState(() {
                    calculationMethodCollapsed = !calculationMethodCollapsed;
                    if (!calculationMethodCollapsed) {
                      madhabCollapsed = true;
                      languageCollapsed = true;
                    }
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  height: calculationMethodCollapsed ? MediaQuery.of(context).size.height * 0.12 : MediaQuery.of(context).size.height * 0.31,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xFFDF888F),
                    borderRadius: BorderRadius.circular(bigBorderRadius),
                  ),
                  padding: const EdgeInsets.all(10),
                  curve: Curves.fastOutSlowIn,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AnimatedCrossFade(
                        firstChild: Container(
                          width: 500,
                          alignment: Alignment.center,
                          child: Text("Metodo di calcolo"),
                        ),
                        secondChild: Container(
                          width: 500,
                          alignment: Alignment.center,
                          child: const Text("Seleziona il metodo di calcolo"),
                        ),
                        crossFadeState: madhabCollapsed ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                        duration: const Duration(milliseconds: 200),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ExpandibleContainer(
                        onTap: () {
                          setState(() {
                            calculationMethodCollapsed = !calculationMethodCollapsed;
                            if (!calculationMethodCollapsed) {
                              madhabCollapsed = true;
                              languageCollapsed = true;
                            }
                          });
                        },
                        borderRadius: smallBorderRadius,
                        collapsed: calculationMethodCollapsed,
                        collapsedHeight: MediaQuery.of(context).size.height * 0.06,
                        expandedHeight: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width,
                        bgColor: const Color(0xFFF9E8E0),
                        collapsedContent: const CalcMethodCollapsed(),
                        expandedContent: const CalcMethodExpanded(),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Container per la scelta della lingua
              GestureDetector(
                onTap: () {
                  setState(() {
                    languageCollapsed = !languageCollapsed;
                    if (!languageCollapsed) {
                      madhabCollapsed = true;
                      calculationMethodCollapsed = true;
                    }
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  height: languageCollapsed ? MediaQuery.of(context).size.height * 0.12 : MediaQuery.of(context).size.height * 0.31,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xFFDF888F),
                    borderRadius: BorderRadius.circular(bigBorderRadius),
                  ),
                  padding: const EdgeInsets.all(10),
                  curve: Curves.fastOutSlowIn,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AnimatedCrossFade(
                        firstChild: Container(
                          width: 500,
                          alignment: Alignment.center,
                          child: const Text("Lingua"),
                        ),
                        secondChild: Container(
                          width: 500,
                          alignment: Alignment.center,
                          child: const Text("Seleziona la lingua"),
                        ),
                        crossFadeState: madhabCollapsed ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                        duration: const Duration(milliseconds: 200),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ExpandibleContainer(
                        onTap: () {
                          setState(() {
                            languageCollapsed = !languageCollapsed;
                            if (!languageCollapsed) {
                              madhabCollapsed = true;
                              calculationMethodCollapsed = true;
                            }
                          });
                        },
                        borderRadius: smallBorderRadius,
                        collapsed: languageCollapsed,
                        collapsedHeight: MediaQuery.of(context).size.height * 0.06,
                        expandedHeight: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width,
                        bgColor: const Color(0xFFF9E8E0),
                        collapsedContent: const LanguageCollapsed(),
                        expandedContent: const LanguageExpanded(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

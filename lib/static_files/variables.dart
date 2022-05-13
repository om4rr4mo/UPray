bool prayerCollapsed = true;
bool calendarCollapsed = true;
bool madhabCollapsed = true;
bool calculationMethodCollapsed = true;
bool languageCollapsed = true;
MadhabEnum currentMadhab = MadhabEnum.shafi;
CalculationMethodEnum currentCalculationMethod =
    CalculationMethodEnum.worldwide;
LanguageEnum currentLanguage = LanguageEnum.italiano;

enum LanguageEnum { italiano, inglese, francese, arabo }

enum MadhabEnum { shafi, hanafi }

enum CalculationMethodEnum {
  karachi,
  america,
  worldLeague,
  makkah,
  egyptian,
  kuwait,
  qatar,
  singapura,
  france,
  turkey,
  worldwide
}

double bigBorderRadius = 20.0;
double smallBorderRadius = 10.0;

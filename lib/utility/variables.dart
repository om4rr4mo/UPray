import 'adhkar.dart';

bool prayerCollapsed = true;
bool calendarCollapsed = true;
bool notificationCollapsed = true;
bool madhabCollapsed = true;
bool calculationMethodCollapsed = true;
bool languageCollapsed = true;
bool adhkarCollapsed = true;
bool eveningAdhkarCollapsed = true;

MadhabEnum currentMadhab = MadhabEnum.shafi;
CalculationMethodEnum currentCalculationMethod = CalculationMethodEnum.worldwide;
LanguageEnum currentLanguage = LanguageEnum.italiano;

enum LanguageEnum { italiano, inglese, francese, arabo }

enum MadhabEnum { shafi, hanafi }

enum CalculationMethodEnum { karachi, america, worldLeague, makkah, egyptian, kuwait, qatar, singapura, france, turkey, worldwide }

double bigBorderRadius = 20.0;
double smallBorderRadius = 10.0;
double minimumSafeArea = 20.0;

List<AdhkarCategory> adhkarCatList = [
  new AdhkarCategory(
    categoryName: "Adhkar del mattino",
    image: "assets/images/morning_adhkar.png",
    listAdhkar: adhkarList,
    tag: "morningAdhkar",
  ),
  new AdhkarCategory(
    categoryName: "Adhkar della sera",
    image: "assets/images/evening_adhkar.png",
    listAdhkar: adhkarList,
    tag: "eveningAdhkar",
  ),
];

List<SingleAdhkar> adhkarList = [
  new SingleAdhkar(
    adhkarName: title,
    description: description,
    arabicText: arabicText,
    translitText: translitText,
    traductText: traductText,
    audioFile: audioFile,
    imageFile: imageFile,
    numRepeat: 1,
  ),
  new SingleAdhkar(
    adhkarName: title,
    description: description,
    arabicText: arabicText,
    translitText: translitText,
    traductText: traductText,
    audioFile: audioFile,
    imageFile: imageFile,
    numRepeat: 1,
  ),
  new SingleAdhkar(
    adhkarName: title,
    description: description,
    arabicText: arabicText,
    translitText: translitText,
    traductText: traductText,
    audioFile: audioFile,
    imageFile: imageFile,
    numRepeat: 1,
  ),
  new SingleAdhkar(
    adhkarName: title,
    description: description,
    arabicText: arabicText,
    translitText: translitText,
    traductText: traductText,
    audioFile: audioFile,
    imageFile: imageFile,
    numRepeat: 1,
  ),
  new SingleAdhkar(
    adhkarName: title,
    description: description,
    arabicText: arabicText,
    translitText: translitText,
    traductText: traductText,
    audioFile: audioFile,
    imageFile: imageFile,
    numRepeat: 1,
  ),
  new SingleAdhkar(
    adhkarName: title,
    description: description,
    arabicText: arabicText,
    translitText: translitText,
    traductText: traductText,
    audioFile: audioFile,
    imageFile: imageFile,
    numRepeat: 1,
  ),
];

String title = "Ayat al-Kursi: La Grande Protezione";
String description = "";
String arabicText =
    "اللَّهُ لاَ إِلَهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلاَّ بِمَا شَاءَ وَسِعَ كُرْسِيُّهُ السَّمَاواتِ وَالأَرْضَ وَلاَ يَئُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ";
String translitText =
    "Allahu laaa ilaaha illaa huwal haiyul qai-yoom; laa taakhuzuhoo sinatunw wa laa nawm; lahoo maa fissamaawaati wa maa fil ard; man zallazee yashfa'u indahooo illaa be iznih; ya'lamu maa baina aideehim wa maa khalfahum; wa laa yuheetoona beshai 'immin 'ilmihee illa be maa shaaaa; wasi'a kursiyyuhus samaa waati wal arda wa la ya'ooduho hifzuhumaa; wa huwal aliyyul 'azeem";
String traductText =
    "Allâh! Non c’è dio eccetto Lui, Al-Ḥayyu [il Sempre Vivo], al-Qayyûm [Colui che sostiene e protegge tutto ciò che esiste]. Né torpore lo sopraffa, né sonno. A Lui appartiene qualunque cosa è nei cieli e qualunque cosa è nella terra. Chi può intercedere con Lui se non con il Suo permesso? Egli conosce quello che accade a loro [le Sue creature] in questo mondo, e quello che accadrà loro nell’Aldilà. E loro mai comprendono nulla della Sua Conoscenza eccetto quello che Egli vuole. Il Suo Kursi si estende sopra i cieli e la terra ed Egli non sente alcuna fatica nel custodirli e preservarli. Ed Egli è l’Altissimo, il Più Grande.";
String audioFile = "";
String imageFile = "";
int numRepeat = 1;

class AdhkarCategory {
  final String categoryName;
  final String image;
  final List<SingleAdhkar> listAdhkar;
  final String tag;
  bool collapsed = false;

  AdhkarCategory({
    required this.categoryName,
    required this.image,
    required this.listAdhkar,
    required this.tag,
  });
}

class SingleAdhkar {
  final String adhkarName;
  final String description;
  final String arabicText;
  final String translitText;
  final String traductText;
  final String audioFile;
  final String imageFile;
  final int numRepeat;

  SingleAdhkar({
    required this.adhkarName,
    required this.description,
    required this.arabicText,
    required this.translitText,
    required this.traductText,
    required this.audioFile,
    required this.imageFile,
    required this.numRepeat,
  });
}

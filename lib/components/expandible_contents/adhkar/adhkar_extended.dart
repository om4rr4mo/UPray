import 'package:flutter/material.dart';
import 'package:upray/pages/adhkar_text.dart';
import 'package:upray/utility/adhkar.dart';
import 'package:upray/utility/variables.dart';

class AdhkarExtended extends StatelessWidget {
  final title;
  final image;
  final tag;
  final List<SingleAdhkar> adhkarList;

  const AdhkarExtended({super.key, required this.title, required this.image, required this.tag, required this.adhkarList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero(
            tag: tag,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(bigBorderRadius),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          Expanded(
            //height: MediaQuery.of(context).size.height * 0.30,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: adhkarList.map((SingleAdhkar singleAdhkar) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdhkarText(
                                    title: singleAdhkar.adhkarName,
                                    description: singleAdhkar.description,
                                    arabicText: singleAdhkar.arabicText,
                                    translitText: singleAdhkar.translitText,
                                    traductText: singleAdhkar.traductText,
                                    audioFile: singleAdhkar.audioFile,
                                    imageFile: singleAdhkar.imageFile,
                                    numRepeat: singleAdhkar.numRepeat,
                                  )),
                        );
                      },
                      child: AnimatedContainer(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFFA34865),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 400,
                        height: 40,
                        duration: const Duration(milliseconds: 200),
                        child: Text(
                          title,
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upray/utility/variables.dart';

class AdhkarText extends StatefulWidget {
  final String title;
  final String description;
  final String arabicText;
  final String translitText;
  final String traductText;
  final String audioFile;
  final String imageFile;
  final int numRepeat;

  const AdhkarText({
    required this.title,
    required this.description,
    required this.arabicText,
    required this.translitText,
    required this.traductText,
    required this.audioFile,
    required this.imageFile,
    required this.numRepeat,
  });

  @override
  _AdhkarTextState createState() => _AdhkarTextState();
}

class _AdhkarTextState extends State<AdhkarText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blueGrey,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(minimumSafeArea),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * 0.90,
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
              color: Color(0xFFF9E8E0),
              borderRadius: BorderRadius.all(Radius.circular(bigBorderRadius)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.title),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xFFA34865)),
                      child: Center(child: Text('X' + numRepeat.toString())),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Text(
                          widget.arabicText,
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(widget.translitText),
                        SizedBox(
                          height: 30,
                        ),
                        Text(widget.traductText),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.copy_rounded),
                    Icon(Icons.play_arrow),
                    Icon(Icons.favorite),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

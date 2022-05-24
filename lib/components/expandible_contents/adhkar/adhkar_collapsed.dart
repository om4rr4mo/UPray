import 'package:flutter/material.dart';
import 'package:upray/utility/variables.dart';

class AdhkarCollapsed extends StatelessWidget {
  final height;
  final title;
  final image;
  final tag;

  const AdhkarCollapsed({super.key, required this.height, required this.title, required this.image, required this.tag});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title),
          SizedBox(
            height: 16,
          ),
          Hero(
            tag: tag,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(bigBorderRadius),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: height - 48,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

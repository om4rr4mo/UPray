import 'package:flutter/material.dart';
import 'package:upray/components/expandible_container.dart';
import 'package:upray/components/expandible_contents/adhkar/adhkar_collapsed.dart';
import 'package:upray/components/expandible_contents/adhkar/adhkar_extended.dart';
import 'package:upray/utility/adhkar.dart';
import 'package:upray/utility/variables.dart';

class Adhkar extends StatefulWidget {
  const Adhkar({Key? key}) : super(key: key);

  @override
  _AdhkarState createState() => _AdhkarState();
}

class _AdhkarState extends State<Adhkar> {
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
          minimum: EdgeInsets.symmetric(horizontal: minimumSafeArea),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: adhkarCatList.map((AdhkarCategory adhkarCat) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: ExpandibleContainer(
                    borderRadius: bigBorderRadius,
                    onTap: () {
                      setState(() {
                        adhkarCat.collapsed = !adhkarCat.collapsed;
                      });
                    },
                    collapsed: adhkarCat.collapsed,
                    collapsedHeight: MediaQuery.of(context).size.height * 0.35,
                    expandedHeight: MediaQuery.of(context).size.height * 0.50,
                    width: MediaQuery.of(context).size.width,
                    bgColor: Color(0xFFF9E8E0),
                    collapsedContent: AdhkarCollapsed(
                      height: MediaQuery.of(context).size.height * 0.35,
                      tag: adhkarCat.tag,
                      image: adhkarCat.image,
                      title: adhkarCat.categoryName,
                    ),
                    expandedContent: AdhkarExtended(
                      title: adhkarCat.categoryName,
                      image: adhkarCat.image,
                      tag: adhkarCat.tag,
                      adhkarList: adhkarCat.listAdhkar,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ));
  }
}

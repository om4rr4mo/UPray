import 'package:flutter/material.dart';

class ExpandibleContainer extends StatefulWidget {
  final double collapsedHeight;
  final double expandedHeight;
  final double width;
  final Color bgColor;
  final Widget collapsedContent;
  final Widget expandedContent;
  final double borderRadius;
  bool collapsed;

  //gli passiamo la function onTap per gestire il
  // comportamento dell'espansione dei vari blocchi all'espasione di una
  final Function() onTap;

  ExpandibleContainer(
      {Key? key,
      required this.borderRadius,
      required this.onTap,
      required this.collapsed,
      required this.collapsedHeight,
      required this.expandedHeight,
      required this.width,
      required this.bgColor,
      required this.collapsedContent,
      required this.expandedContent})
      : super(key: key);

  @override
  _ExpandibleContainerState createState() => _ExpandibleContainerState();
}

class _ExpandibleContainerState extends State<ExpandibleContainer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height:
            widget.collapsed ? widget.collapsedHeight : widget.expandedHeight,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.bgColor,
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        curve: Curves.fastOutSlowIn,
        child:
            widget.collapsed ? widget.collapsedContent : widget.expandedContent,
      ),
    );
  }
}

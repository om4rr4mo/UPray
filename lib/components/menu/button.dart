import 'package:flutter/material.dart';
import 'package:upray/static_files/variables.dart';

class MenuButton extends StatefulWidget {
  final double distance;
  final IconData icon;
  final String label;
  final Function() onTap;

  const MenuButton({Key? key, required this.distance, required this.icon, required this.label, required this.onTap}) : super(key: key);

  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        margin: EdgeInsets.only(top: widget.distance),
        width: 324.5,
        decoration: BoxDecoration(
          color: const Color(0xFF401C48),
          borderRadius: BorderRadius.circular(smallBorderRadius),
        ),
        child: Row(
          children: [
            const SizedBox(width: 12.0),
            Icon(
              widget.icon,
              color: const Color(0xFFD88090),
            ),
            const SizedBox(width: 12.0),
            Text(
              widget.label,
              style: const TextStyle(
                color: Color(0xFFECD7D8),
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: widget.onTap,
    );
  }
}

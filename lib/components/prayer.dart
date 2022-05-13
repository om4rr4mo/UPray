import 'package:flutter/material.dart';

class PrayerMenu extends StatefulWidget {
  final String prayerName;
  final String prayerTime;
  final Function() onTap;

  const PrayerMenu(
      {Key? key,
      required this.prayerName,
      required this.prayerTime,
      required this.onTap})
      : super(key: key);

  @override
  _PrayerMenuState createState() => _PrayerMenuState();
}

class _PrayerMenuState extends State<PrayerMenu> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 42,
        margin: const EdgeInsets.only(top: 13),
        width: 310,
        decoration: BoxDecoration(
          color: const Color(0xFFF9E8E0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  widget.prayerName,
                  style: const TextStyle(
                    color: Color(0xFF954872),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  widget.prayerTime,
                  style: const TextStyle(
                    color: Color(0xFF954872),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: const Icon(
                  Icons.person,
                  color: Color(0xFFA34865),
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: widget.onTap,
    );
  }
}

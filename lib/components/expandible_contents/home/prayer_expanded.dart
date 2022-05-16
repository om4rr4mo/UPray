import 'package:flutter/material.dart';
import 'package:upray/components/prayer.dart';

class PrayerExpanded extends StatefulWidget {
  const PrayerExpanded({Key? key}) : super(key: key);

  @override
  _PrayerExpandedState createState() => _PrayerExpandedState();
}

class _PrayerExpandedState extends State<PrayerExpanded> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          PrayerMenu(prayerName: "Fajr", prayerTime: "05:21"),
          PrayerMenu(prayerName: "Shuruq", prayerTime: "07:04"),
          PrayerMenu(prayerName: "Dhuhr", prayerTime: "13:25"),
          PrayerMenu(prayerName: "Asr", prayerTime: "16:57"),
          PrayerMenu(prayerName: "Magrib", prayerTime: "19:45"),
          PrayerMenu(prayerName: "Isha", prayerTime: "21:21"),
        ],
      ),
    );
  }
}

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
        children: [
          PrayerMenu(prayerName: "Fajr", prayerTime: "05:21", onTap: () {}),
          PrayerMenu(prayerName: "Shuruq", prayerTime: "07:04", onTap: () {}),
          PrayerMenu(prayerName: "Dhuhr", prayerTime: "13:25", onTap: () {}),
          PrayerMenu(prayerName: "Asr", prayerTime: "16:57", onTap: () {}),
          PrayerMenu(prayerName: "Maghrib", prayerTime: "19:45", onTap: () {}),
          PrayerMenu(prayerName: "Isha", prayerTime: "21:21", onTap: () {}),
        ],
      ),
    );
  }
}

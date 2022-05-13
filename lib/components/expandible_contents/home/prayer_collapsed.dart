import 'package:flutter/material.dart';

class PrayerCollapsed extends StatefulWidget {
  final String prayerName;
  final String prayerTime;
  final String nextPrayer;
  final IconData notificationStatus;
  final Function() onTap;

  const PrayerCollapsed(
      {Key? key,
      required this.prayerName,
      required this.prayerTime,
      required this.nextPrayer,
      required this.notificationStatus,
      required this.onTap})
      : super(key: key);

  @override
  _PrayerCollapsedState createState() => _PrayerCollapsedState();
}

class _PrayerCollapsedState extends State<PrayerCollapsed> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Icon(
                  widget.notificationStatus,
                  color: const Color(0xFFA34865),
                ),
                onTap: widget.onTap,
              ),
              Text(
                widget.prayerName,
                style: const TextStyle(
                  color: Color(0xFFECD7D8),
                  fontSize: 20,
                ),
              ),
              Text(
                widget.prayerTime,
                style: const TextStyle(
                  color: Color(0xFFECD7D8),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "next prayer",
                style: TextStyle(
                  color: Color(0xFFECD7D8),
                ),
              ),
              Text(
                widget.nextPrayer,
                style: const TextStyle(
                  color: Color(0xFFECD7D8),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 97.3),
        Image.asset(
          'assets/images/prayer_masjid.png',
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upray/components/expandible_container.dart';
import 'package:upray/utility/variables.dart';

class PrayerMenu extends StatefulWidget {
  final String prayerName;
  final String prayerTime;

  const PrayerMenu({Key? key, required this.prayerName, required this.prayerTime}) : super(key: key);

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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13.0),
      child: ExpandibleContainer(
        borderRadius: smallBorderRadius,
        onTap: () {
          setState(() {
            notificationCollapsed = !notificationCollapsed;
          });
        },
        collapsed: notificationCollapsed,
        collapsedHeight: 42.0,
        expandedHeight: 73.0,
        width: 310.0,
        bgColor: const Color(0xFFF9E8E0),
        collapsedContent: PrayerBox(
          prayerName: widget.prayerName,
          prayerTime: widget.prayerTime,
          icon: Icons.person,
        ),
        expandedContent: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              PrayerBox(
                prayerName: widget.prayerName,
                prayerTime: widget.prayerTime,
                icon: Icons.arrow_drop_down,
              ),
              const NotificationBox()
            ],
          ),
        ),
      ),
    );
  }
}

class PrayerBox extends StatefulWidget {
  final String prayerName;
  final String prayerTime;
  final IconData icon;

  const PrayerBox({Key? key, required this.prayerName, required this.prayerTime, required this.icon}) : super(key: key);

  @override
  State<PrayerBox> createState() => _PrayerBoxState();
}

class _PrayerBoxState extends State<PrayerBox> {
  @override
  Widget build(BuildContext context) {
    return Flex(
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
            child: Icon(
              widget.icon,
              color: const Color(0xFFA34865),
            ),
          ),
        ),
      ],
    );
  }
}

class NotificationBox extends StatefulWidget {
  const NotificationBox({
    Key? key,
  }) : super(key: key);

  @override
  State<NotificationBox> createState() => _NotificationBoxState();
}

class _NotificationBoxState extends State<NotificationBox> {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Flexible(
          flex: 1,
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: const Icon(
              Icons.vibration,
              color: Color(0xFFA34865),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            child: const Icon(
              Icons.vibration,
              color: Color(0xFFA34865),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: const Icon(
              Icons.vibration,
              color: Color(0xFFA34865),
            ),
          ),
        ),
      ],
    );
  }
}

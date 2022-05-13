import 'package:flutter/material.dart';
import 'package:upray/components/expandible_contents/home/prayer_collapsed.dart';
import 'package:upray/components/expandible_contents/home/prayer_expanded.dart';
import 'package:upray/static_files/variables.dart';

import '../components/expandible_container.dart';
import '../components/menu/menu.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Menu(
      fixedWidget: Column(children: [
        //Container per gli orari della preghiera
        ExpandibleContainer(
          onTap: () {
            setState(() {
              prayerCollapsed = !prayerCollapsed;
              if (!prayerCollapsed) {
                calendarCollapsed = true;
              }
            });
          },
          borderRadius: bigBorderRadius,
          collapsed: prayerCollapsed,
          collapsedHeight: MediaQuery.of(context).size.height * 0.19,
          expandedHeight: MediaQuery.of(context).size.height * 0.44,
          width: MediaQuery.of(context).size.width,
          bgColor: const Color(0xFFF48FB1),
          collapsedContent: PrayerCollapsed(
            prayerName: "Fajr",
            prayerTime: "05:24",
            nextPrayer: "05 h 12m 4s",
            notificationStatus: Icons.add_alert,
            onTap: () {},
          ),
          expandedContent: const PrayerExpanded(),
        ),
        const SizedBox(
          height: 20,
        ),
        //Container per il calendario
        ExpandibleContainer(
          onTap: () {
            setState(() {
              calendarCollapsed = !calendarCollapsed;
              if (!calendarCollapsed) {
                prayerCollapsed = true;
              }
            });
          },
          borderRadius: bigBorderRadius,
          collapsed: calendarCollapsed,
          collapsedHeight: MediaQuery.of(context).size.height * 0.10,
          expandedHeight: MediaQuery.of(context).size.height * 0.35,
          width: MediaQuery.of(context).size.width,
          bgColor: const Color(0xFFF48FB1),
          collapsedContent: Container(),
          expandedContent: Container(),
        ),
        const SizedBox(
          height: 110,
        ),
      ]),
    );
  }
}

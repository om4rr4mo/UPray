import 'package:flutter/material.dart';
import 'package:upray/pages/adhkar.dart';
import 'package:upray/pages/home.dart';
import 'package:upray/pages/impostazioni.dart';
import 'package:upray/utility/variables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBasePage(
        title: 'Flutter Demo Home Page',
      ),
      routes: {
        '/impostazioni': (BuildContext context) => Impostazioni(),
        '/adhkar': (BuildContext context) => Adhkar(),
      },
    );
  }
}

class MyBasePage extends StatefulWidget {
  const MyBasePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyBasePage> createState() => _MyBasePageState();
}

class _MyBasePageState extends State<MyBasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(left: minimumSafeArea, top: minimumSafeArea, right: minimumSafeArea),
        child: Home(),
      ),
    );
  }
}

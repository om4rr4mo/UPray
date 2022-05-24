import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:upray/pages/home.dart';

import 'firebase_options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBasePage(
        title: 'Flutter Demo Home Page',
      ),
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

  initFirebase() async{
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
  @override
  void initState() async{
    // TODO: implement initState
    super.initState();

    initFirebase();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
        child: Home(),
      ),
    );
  }
}

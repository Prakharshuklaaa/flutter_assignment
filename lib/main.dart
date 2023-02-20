import 'package:flutter/material.dart';
import 'package:flutter_assignment/textControl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String topic = "nothing";

  void _pressed1() {
    setState(() {
      topic = "Packages";
    });
  }

  void _pressed2() {
    setState(() {
      topic = "Classes";
    });
  }

  void _pressed3() {
    setState(() {
      topic = "API calls";
    });
  }

  void _pressed4() {
    setState(() {
      topic = "Basic Dart";
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Assignment",
            textAlign: TextAlign.center,
          ),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Center(
              child: Column(children: [
                Text(
                  "I am Learning '$topic'",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
                TextControl(_pressed1, "Packages"),
                TextControl(_pressed2, "Classes"),
                TextControl(_pressed3, "API"),
                TextControl(_pressed4, "Basic Dart"),
              ]),
            )),
      ),
    );
  }
}

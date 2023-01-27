import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyState createState() => MyState();
}

class MyState extends State<MyApp> {
  Color containColor = Colors.black;

  void changeColor() {
    setState(() {
      if (containColor == Colors.red) {
        containColor = Colors.black;
      } else {
        containColor = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Stateful Widget"),
          ),
          body: Container(decoration: BoxDecoration(color: containColor)),
          floatingActionButton: FloatingActionButton(
            onPressed: changeColor,
            child: Icon(Icons.add),
            tooltip: "Click to change color",
          ),
        ));
  }
}

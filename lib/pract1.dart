import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyState createState() => MyState();
}

int score = 0;

class MyState extends State<MyHomePage> {
  String? classy;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Radio Button in Flutter"),
          backgroundColor: Colors.orange,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Text(
              "What is your class?",
              style: TextStyle(fontSize: 18),
            ),
            Divider(),
            RadioListTile(
                title: Text("SYBCA"),
                value: "SYBCA",
                groupValue: classy,
                onChanged: (value) {
                  setState(() {
                    classy = value.toString();
                  });
                }),
            Divider(),
            RadioListTile(
                title: Text("FYBCA"),
                value: "FYBCA",
                groupValue: classy,
                onChanged: (value) {
                  setState(() {
                    classy = value.toString();
                  });
                }),
          ]),
        ));
  }
}

//create a screen which contains a button in the center display "Toggle Color". On pressed background of screen toggles
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyState createState() => MyState();
}

class MyState extends State<MyApp> {
  Color containerColor = Colors.yellow;
  int i = 1;
  void changeColor() {
    setState(() {
      if (i % 2 == 0) {
        containerColor = Colors.blueGrey;
        i++;
      } else if (i % 3 == 0) {
        containerColor = Colors.redAccent;
        i++;
      } else {
        containerColor = Colors.purpleAccent;
        i++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text("Simple App")),
          body: Container(
            decoration: BoxDecoration(color: containerColor),
            child: Center(
              child: ElevatedButton(
                onPressed: changeColor,
                child: Text("Toggle Color"),
              ),
            ),
          ),
        ));
  }
}

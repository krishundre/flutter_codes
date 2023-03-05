// Create a basic screen in flutter which will display a welcome message and will have 2 buttons for the light and dark mode.Clicking on those 2 buttons will change the theme
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Light/Dark Theme',
      theme: ThemeData.light(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: (click == false) ? Colors.black : Colors.white,
        appBar: AppBar(
            title: Text('Changing theme',
                style: TextStyle(color: Color(0xff130a5f), fontSize: 30))),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to My App',
                style: TextStyle(color: Color(0xffcfd75d), fontSize: 40)),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  click = false;
                  print('dark mode');
                });
              },
              child: Text('Dark Theme'),
              style:
                  ElevatedButton.styleFrom(padding: const EdgeInsets.all(10)),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    click = true;
                    print('light');
                  });
                },
                child: Text('Light Theme'))
          ], //children
        )));
  }
}

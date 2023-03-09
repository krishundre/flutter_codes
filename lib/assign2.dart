import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Quiz App", initialRoute: '/Que1', routes: {
      '/Que1': (context) => FirstQue(),
      '/Que2': (context) => Second(),
      '/Que3': (context) => Third(),
      '/score': (context) => Score(),
    });
  }
}
//    return MaterialApp(title: "QUIZ APP", initialRoute: '/Q1', routes: {

class FirstQue extends StatefulWidget {
  @override
  MyState createState() => MyState();
}

class Second extends StatefulWidget {
  @override
  Secondd createState() => Secondd();
}

class Third extends StatefulWidget {
  @override
  Thirdd createState() => Thirdd();
}

class Score extends StatefulWidget {
  FourthScreen createState() => FourthScreen();
}

int score = 0;

class MyState extends State<FirstQue> {
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
              "What does HTML stands for?",
              style: TextStyle(fontSize: 18),
            ),
            Divider(),
            RadioListTile(
                title: Text("Hypertext Markup Language"),
                value: "Hypertext Markup Language",
                groupValue: classy,
                onChanged: (value) {
                  setState(() {
                    classy = value.toString();
                  });
                }),
            RadioListTile(
                title: Text("high type markup lang"),
                value: "high type markup lang",
                groupValue: classy,
                onChanged: (value) {
                  setState(() {
                    classy = value.toString();
                  });
                }),
            Divider(),
            ElevatedButton(
              onPressed: () {
                if (classy == "Hypertext Markup Language") {
                  score = score + 1;
                }
                Navigator.pushNamed(context, '/Que2');
              },
              child: Text("Next Que"),
            )
          ]),
        ));
  }
}

class Secondd extends State<Second> {
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
              "What does CSS stands for?",
              style: TextStyle(fontSize: 18),
            ),
            Divider(),
            RadioListTile(
                title: Text("Cascading Style Sheet"),
                value: "Cascading Style Sheet",
                groupValue: classy,
                onChanged: (value) {
                  setState(() {
                    classy = value.toString();
                  });
                }),
            RadioListTile(
                title: Text("color sheet statement"),
                value: "high type markup lang",
                groupValue: classy,
                onChanged: (value) {
                  setState(() {
                    classy = value.toString();
                  });
                }),
            Divider(),
            ElevatedButton(
              onPressed: () {
                if (classy == "Cascading Style Sheet") {
                  score = score + 1;
                }
                Navigator.pushNamed(context, '/Que3');
              },
              child: Text("Next Que"),
            )
          ]),
        ));
  }
}

class Thirdd extends State<Third> {
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
              "What does JS stands for?",
              style: TextStyle(fontSize: 18),
            ),
            Divider(),
            RadioListTile(
                title: Text("java Shell"),
                value: "java Shell",
                groupValue: classy,
                onChanged: (value) {
                  setState(() {
                    classy = value.toString();
                  });
                }),
            RadioListTile(
                title: Text("Java Script"),
                value: "Java Script",
                groupValue: classy,
                onChanged: (value) {
                  setState(() {
                    classy = value.toString();
                  });
                }),
            Divider(),
            ElevatedButton(
              onPressed: () {
                if (classy == "Java Script") {
                  score = score + 1;
                }
                Navigator.pushNamed(context, '/score');
              },
              child: Text("See Result"),
            )
          ]),
        ));
  }
}

class FourthScreen extends State<Score> {
  int incorrect = 3 - score;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
          backgroundColor: Color(0xff177abe),
        ),
        body: Column(
          //padding: EdgeInsets.all(30),
          children: [
            Text('Correct Score is $score',
                style: TextStyle(color: Color(0xffcfd75d), fontSize: 10)),
            SizedBox(
              height: 10,
            ),
            Text('Incorrect score is $incorrect',
                style: TextStyle(color: Color(0xfff20404), fontSize: 10)),
          ],
        ));
  }
}

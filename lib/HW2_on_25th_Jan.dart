import 'package:flutter/material.dart';
import 'package:helloworld/HW1_on_25th_Jan.dart';
import 'package:helloworld/Navigation.dart';

void main() {
  runApp(
    MaterialApp(
      title: "HW2",
      initialRoute: '/first',
      routes: {
        '/first': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
      },
    ),
  );
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('log in page'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
        child: Text('Log in'),
      )),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Message'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/first');
        },
        child: Text('GO back to log in Page'),
      )),
    );
  }
}


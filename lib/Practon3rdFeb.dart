import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Animation",
      initialRoute: '/',
      routes: {
        '/': (context) => AnimatedContainerPage(),
        '/second': (context) => MyHomePage()
      },
    ));

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello World')),
      body: Center(
        child: Text(
          "My First App!!!",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
          ),
        ),
      ),
    );
  }
}

class AnimatedContainerPage extends StatefulWidget {
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 200;
  double _height = 200;
  Color _color = Colors.red;
  Color _back = Colors.white;
  Color _text = Colors.white;
  bool status = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              color: _color,
              duration: Duration(milliseconds: 250),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: _update,
                child: Text('Launch'),
                style: ElevatedButton.styleFrom(
                  primary: _back,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                  textStyle: TextStyle(
                    backgroundColor: _back,
                    color: _text,
                    fontSize: 50,
                  ),
                ))
          ],
        ),
      ),
    );
  }

  void _update() {
    setState(() {
      if (status) {
        Navigator.pushNamed(context, '/second');
      }

      if (_color == Colors.red) {
        _width = 300;
        _height = 300;
        _color = Colors.green;
        curve:
        Curves.easeInOutCubic;
        _back = Colors.green;
        _text = Colors.yellow;
        status = true;
      }
    });
  }
}

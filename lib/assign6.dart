//Create a small program which will fetch data from Json file
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<MyApp> {
  late Future data;
  void initState() {
    super.initState();
    data = Network("https://randomuser.me/api/?results=20").fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
        title: Text("A simple Widget"),
      )),
    );
  }
}

Future getData() async {
  var data;
  String url = "https://jsonplaceholder.typicode.com/posts";
  Network network = Network(url);
  data = network.fetchData();
  return data;
}

class Network {
  var url;
  Network(this.url);
  Future fetchData() async {
    print("$url");
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      print(response.body);
      return response.body;
    } else
      print(response.statusCode);
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// Main Class
class _MyAppState extends State<MyApp> {
  List<String> products = ['Item A', 'Item B', 'Item C', 'Item D'];

  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Easy money'),
          backgroundColor: Color(0xFF00FFFF),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('Click Me'),
              ),
            ),
            Column(
                children: this
                    .products
                    .map((element) => Card(
                            child: Column(children: <Widget>[
                          Image.asset('assets/rectangles.png'),
                          Text(element)
                        ])))
                    .toList())
          ],
        ),
      ),
    );
  }
}
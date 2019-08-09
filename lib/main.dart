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

class _MyAppState extends State {
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
            Card(
                child: Column(children: <Widget>[
              Image.asset('assets/rectangles.jpg'),
              Text('My Image')
            ]))
          ],
        ),
      ),
    );
  }
}

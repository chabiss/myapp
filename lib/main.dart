import 'package:flutter/material.dart';

import './products_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Easy money'),
            ),
            body: ProductManager(initialProduct: 'Food')));
  }
}

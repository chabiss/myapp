import 'package:flutter/material.dart';

class Products extends StatelessWidget 
{
  final List<String> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) 
  {
    return Column(
        children: 
            this.products
            .map((element) => Card(
                    child: Column(children: <Widget>[
                  Image.asset('assets/rectangles.png'),
                  Text(element)
                ])))
            .toList());
  }
}

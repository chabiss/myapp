import 'package:flutter/material.dart';

class ProductController extends StatelessWidget {
  final Function addProduct;
  String productName;

  ProductController(this.addProduct);


  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
          width: 200,
          margin: EdgeInsets.all(10),
          child: TextField(
              onSubmitted: (String value) {this.productName = value;},
              decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Product Name',
      ))),
      RaisedButton(
          color: Theme.of(context).primaryColor,
          child: Text('Add Product'),
          onPressed: () {
            this.addProduct(this.productName);
          }),
    ]);
  }
}

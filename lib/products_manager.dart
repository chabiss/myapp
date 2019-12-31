import 'package:flutter/material.dart';

import './products.dart';
import './products_controller.dart';

class ProductManager extends StatefulWidget {
  final String initialProduct;

  ProductManager({this.initialProduct});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> products = [];

  @override
  void initState() {
    this.products.add(this.widget.initialProduct);
    super.initState();
  }

  void _AddProduct(String newProduct) {
    setState(() {
      this.products.add(newProduct);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          margin: EdgeInsets.all(10.0),
          child: ProductController(this._AddProduct)),
      Products(this.products)
    ]);
  }
}

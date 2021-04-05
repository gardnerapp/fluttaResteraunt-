import 'package:flutter/material.dart';
import 'package:untitled/checkout.dart';

AppBar myAppBar(BuildContext context){
  return AppBar(
    elevation: 20.0,
    title: const Text(
      'Corey\'s Corner',
      style: TextStyle(color: Colors.white),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.shopping_basket),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Checkout())),
        iconSize: 30.0,
      ),
    ],
  );
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/item.dart';
import 'package:untitled/panels/panel.dart';
import '../item/item_details.dart';


class MenuItemPanel extends StatelessWidget {
  final Item item;

  MenuItemPanel(this.item);

  @override
  Widget build(BuildContext context) {
    return Panel(
      color: Colors.white,
      sideColor: Colors.deepOrange,
      child: Row(
        children: <Widget>[
          Expanded(child: Directionality(textDirection: TextDirection.ltr, child:Text(item.name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              )))),
          Directionality(textDirection: TextDirection.ltr, child:Text(item.price.toString(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ))),
        ],
      ),
      onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ItemDetails(item)),
          );
      },
    );
  }
}
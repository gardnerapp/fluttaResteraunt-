import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import 'item_details.dart';
import 'zero_item_details.dart';

class MenuItem extends StatelessWidget {
  final Item item;

  MenuItem(this.item);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed:() {
        if (item.options != null)
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ItemDetails(item)),
          );
        else
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ZeroItemDetails(item)),
          );
      },
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
      color: Colors.white,
      padding: EdgeInsets.all(25.0),
      splashColor: Colors.transparent,
      colorBrightness: Brightness.dark,
      textTheme: ButtonTextTheme.primary,
      elevation: 8.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Colors.deepOrange)),
    );
  }
}
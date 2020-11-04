import 'package:flutter/material.dart';
import 'menu_item.dart';
import 'data.dart';
import 'checkout.dart';

class Menu extends StatelessWidget {
  final SectionData data;
  Menu(this.data);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            title: Text(
              this.data.sectionName,
              style: TextStyle(color: Colors.white),
            ),
            leading: new IconButton(icon: new Icon(Icons.arrow_back), onPressed: (){
              Navigator.pop(context);
            }),
            actions: <Widget>[
              IconButton(icon: new Icon(Icons.shopping_basket), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => Checkout()
                ));
              }, iconSize: 30.0,)
            ],
          ),
            body: ListView( scrollDirection: Axis.vertical,
              children: <Widget>[getItemWidgets(data.sectionItems)],),
    );
  }

  getItemWidgets(List<Item> list){
    return new Column( crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center,
        children: list.map((food)=> Directionality(textDirection: TextDirection.ltr, child: MenuItem(food))).toList());
}
}


import 'package:flutter/material.dart';
import 'package:untitled/models/item.dart';
import 'package:untitled/models/section_data.dart';
import 'menu_item_panel.dart';
import '../checkout.dart';

class SectionItemList extends StatelessWidget {
  final SectionData data;
  SectionItemList(this.data);

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
              padding: EdgeInsets.all(2.0),
              children: <Widget>[getItemWidgets(data.sectionItems)],),
    );
  }

  getItemWidgets(List<Item> list) {
    //TODO Can I Do Awy with this Column
    return new Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: list
            .map((food) => Directionality(
                textDirection: TextDirection.ltr, child: MenuItemPanel(food)))
            .toList());
  }
}

//ReUsable AppBar, Icon Button Styling, MenuItemPanel, then MenuItemList


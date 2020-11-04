import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/models/bloc.dart';
import 'data.dart';
import 'checkout.dart';


class ZeroItemDetails extends StatelessWidget {
  final Item item;

  ZeroItemDetails(this.item);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Beechmont Tavern',
        theme: ThemeData(primaryColor: Colors.deepOrange),
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                item.name,
                style: TextStyle(color: Colors.white),
              ),
              leading: new IconButton(icon: new Icon(Icons.arrow_back), onPressed: (){
                Navigator.pop(context);
              }),
              actions: <Widget>[
                IconButton(
                  icon: new Icon(Icons.shopping_basket),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context) => Checkout()
                    ));
                  },
                  iconSize: 30.0,
                ),
              ],
            ),
            body: Container( //Most parent widget needs to be scrollable
                child: ListView(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    children: <Widget>[
                  Row( mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(child:
                      Text(
                          item.info,
                          style: TextStyle(color: Colors.black,
                            fontSize: 20.0,)
                      )),
                    ],
                  ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
                  new Divider(
                    height: 5.0,
                    color: Colors.black,
                  ),
                  Container(
                    child: TextField(
                      decoration:
                      InputDecoration(labelText: "Additional Instructions"),
                    ),
                    height: 75,
                  ),
                  SizedBox(
                      width: 500.0,
                      height: 75.0,
                      child: RaisedButton(
                        onPressed: () => BlocProvider.of<FoodBloc>(context).add(FoodEvent.add(CheckOutItem(name: this.item.name, price: this.item.price))),
                        child: Text("Order!"),
                        color: Colors.deepOrange,
                        splashColor: Colors.amber,
                      )),
                ]))));
  }
}
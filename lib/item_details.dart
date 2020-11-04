import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/models/bloc.dart';
import 'side_data.dart';
import 'data.dart';
import 'package:flutter/material.dart';
import 'checkout.dart';


class ItemDetails extends StatefulWidget {
  final Item item;

  ItemDetails(this.item);
  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  List<String> sides = [];
  String instructions;
  @override
  Widget build(BuildContext context) {
    CheckOutItem _checkOutItem =  new CheckOutItem(name: this.widget.item.name, price: this.widget.item.price, sides: this.sides );
    return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepOrange,
              title: Text(
                this.widget.item.name,
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
            body: Container(
                child: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
                  Row(
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.all(5.0)),
                      Expanded(
                          child: Text(this.widget.item.info,
                              style: TextStyle(color: Colors.black,
                                fontSize: 20.0,)
                          )), new Padding(padding: EdgeInsets.all(2.0)),
                    ],
                  ),
                  new Padding(padding: EdgeInsets.all(2.5)),
                  new Divider(
            height: 5.0,
            color: Colors.black,
          ),
          new Padding(padding: EdgeInsets.all(2.5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.arrow_downward),
              Text("Scroll Down and Select Your Options",
                  style: TextStyle(color: Colors.black, fontSize: 18.0)),
              Icon(Icons.arrow_downward),
            ],
          ),
          Padding(padding: EdgeInsets.all(2.5)),
          Wrap(
              children: List.generate(this.widget.item.options.length,
                              (index) => Column(
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      new Padding(padding: EdgeInsets.all(5.0)),
                                        Expanded(
                                            child: Center(
                                              child: Text(
                                              this.widget.item.options[index].msg,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22.0,
                                              ),
                                          ),
                                            ),
                                      ),
                                      new Padding(padding: EdgeInsets.all(5.0)),
                                    ]),
                                MyList(this.widget.item.options[index].items,
                                onSelected: (String item) => setState(() => sides.add(item)),
                                )
                              ]))),
                  Wrap(
                    children: List.generate(
                        this.widget.item.addOns.length,
                        (index) => MySwitchList(this.widget.item.addOns[index],)),
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
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        onPressed: () {
                            BlocProvider.of<FoodBloc>(context).add(FoodEvent.add(_checkOutItem));
                            BlocProvider.of<PriceCubit>(context).add(_checkOutItem.price);
                            },
                        child: Text("Order!", style: TextStyle(fontSize: 20.0),),
                        color: Colors.deepOrange,
                        splashColor: Colors.amber,
                      )),
                ])));
  }
}

class MyList extends StatefulWidget {
  final List<Side> items;
  final Function(String) onSelected;
  MyList(this.items, {this.onSelected});

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  int groupValue = -1;
  String groupSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: this.widget.items.length,
        itemBuilder: (BuildContext context, int i) {
          return new Card(
              color: Colors.white70,
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: RadioListTile(
                    value: i,
                    groupValue: groupValue,
                    onChanged: _handleRadioValueChange,
                    secondary: Text(
                      this.widget.items[i].name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                    activeColor: Colors.deepOrange,
                  )));
        },
      )
    ]));
  }

  void _handleRadioValueChange(int i) {
    setState(() {
      this.widget.onSelected(this.widget.items[i].name);
      groupValue = i;
    });
  }
}

class MySwitchList extends StatefulWidget {
  final AddList sides;

  MySwitchList(this.sides);

  @override
  _MySwitchListState createState() => _MySwitchListState();
}

class _MySwitchListState extends State<MySwitchList> {

  @override
  Widget build(BuildContext context) {
    List<Switch> myList = List.generate(this.widget.sides.items.length,
        (index) => Switch(this.widget.sides.items[index],
        ));
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Text(
            this.widget.sides.msg,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          Wrap(children: myList)
        ]));
  }

}

class Switch extends StatefulWidget {
  final Add item;
  Switch(this.item);

  @override
  _SwitchState createState() => _SwitchState();
}

class _SwitchState extends State<Switch> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    CheckOutItem _checkOutItem =  new CheckOutItem(name: this.widget.item.name, price: 1.75, sides: [] );
    return Container(
        child: Card(
          color: Colors.white70,
          child: SwitchListTile(
            value: _value,
            onChanged: (bool newValue) {
              setState(() {
                _value = newValue;
              });
              addSelected(_checkOutItem, _value);
            },
            title: Text(this.widget.item.name),
            activeColor: Colors.deepOrangeAccent,
            inactiveThumbColor: Colors.white,
            secondary: Icon(
              Icons.fastfood,
              color: Colors.deepOrange,
            ),
          ),
        ));
      }
      addSelected(CheckOutItem item, bool value){
        switch (value){
          case false:
            BlocProvider.of<FoodBloc>(context).add(FoodEvent.delete(item));
            BlocProvider.of<PriceCubit>(context).remove(item.price);
            break;
          case true:
          BlocProvider.of<FoodBloc>(context).add(FoodEvent.add(item));
          BlocProvider.of<PriceCubit>(context).add(item.price);
            break;

        }
      }
}
//  BlocProvider.of<FoodBloc>(context).add(FoodEvent.add(_checkOutItem));},
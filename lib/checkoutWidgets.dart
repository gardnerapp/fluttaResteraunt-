import 'package:flutter/material.dart';
import 'package:untitled/models/bloc.dart';
import 'package:untitled/side_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'checkout.dart';

class Price extends StatefulWidget {
  @override
  _PriceState createState() => _PriceState();
}

class _PriceState extends State<Price> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: BlocBuilder<PriceCubit, double>(
          builder:
              (context, price) => Text("\$" + price.toString(),),
          buildWhen: (double previous, double current){
            return true;
          },
        )
    );
  }
}

class CheckOutList extends StatefulWidget {
  @override
  _CheckOutListState createState() => _CheckOutListState();
}

class _CheckOutListState extends State<CheckOutList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: BlocConsumer<FoodBloc, List<CheckOutItem>>(
            buildWhen:
                (List<CheckOutItem> previous, List<CheckOutItem> current) {
              return true;
            },
            listenWhen:
                (List<CheckOutItem> previous, List<CheckOutItem> current) {
              if (current.length < previous.length) {
                return true; //activates listener
              }
              return false;
            },
            builder: (context, foodList) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: foodList.length,
                        itemBuilder: (context,i){
                          return ItemCard(foodList[i]);
                        }),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[Expanded(child: CheckPrice())],
                  ),
                ],
              );
            },
            listener: (BuildContext context, foodList){
              Scaffold.of(context).showSnackBar(SnackBar(content: Text("Removed"),));
            }
        )
    );
  }
}

class CheckPrice extends StatefulWidget {
  @override
  _CheckPriceState createState() => _CheckPriceState();
}

class _CheckPriceState extends State<CheckPrice> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: BlocBuilder<PriceCubit, double>(
          builder: (context, price) => Text(
            "Total: \$" + price.toString(), style: TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          buildWhen: (double previous, double current) {
            return true;
          },
        ));
  }
}

class ItemCard extends StatelessWidget {
  final CheckOutItem item;
  ItemCard(this.item);

  @override
  Widget build(BuildContext context) {
    double price = item.price;
    List<String> sides = item.sides;

    return ListView(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Card(child: ListTile(
            title: Text(item.name, style: cardStyle()),
            subtitle: Text("\$$price"),
            trailing: RaisedButton.icon(
              onPressed: () {
                BlocProvider.of<FoodBloc>(context).add(FoodEvent.delete(this.item));
                BlocProvider.of<PriceCubit>(context).remove(price);
              },
              //removes from cart
              icon: Icon(
                Icons.close,
                color: Colors.red,
              ),
              label: Text("Remove"),
              splashColor: Colors.red,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.red)),
            ),
          )),
          sides != null ? sideWidgets(item) : SizedBox(height:.10)

        ] );
  }


  Widget sideWidgets(CheckOutItem item){
    if(item.sides != []){
      return SideCards(item.sides);
    }
    else return null;
  }
}

class AddCards extends StatelessWidget {
  final List<Add> adds;

  AddCards(this.adds);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: getAddWidgets(adds),
      shrinkWrap: true,

    );
  }

  getAddWidgets(List<Add> adds) {
    return adds
        .map((e) => Directionality(
        textDirection: TextDirection.ltr,
        child: Card(
          child: ListTile(
            title: Text(e.name),
            subtitle: Text("\$1.74"),
            trailing: RaisedButton.icon(
              onPressed: () {},
              //removes from cart
              icon: Icon(
                Icons.close,
                color: Colors.red,
              ),
              label: Text("Remove"),
              splashColor: Colors.red,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.red)),
            ),
          ),
        )))
        .toList();
    //subtitle: Text(side.price.toString()),
  }
}

class SideCards extends StatelessWidget {
  final List<String> sides;

  SideCards(this.sides);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: getSideWidgets(sides),
      shrinkWrap: true,
      physics: ScrollPhysics(),
    );
  }

  getSideWidgets(List<String> sides) {
    return sides.map((e) => Directionality(
        textDirection: TextDirection.ltr,
        child: Card(
            child: ListTile(
                title: Text(
                  e,
                  style: cardStyle(),
                )))))
        .toList();
  }
}

TextStyle cardStyle(){
  TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 12.0
  );
}


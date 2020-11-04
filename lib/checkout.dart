import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/main.dart';
import 'package:untitled/models/bloc.dart';
import 'package:pimp_my_button/pimp_my_button.dart';
import 'checkoutWidgets.dart';


class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home())) ;
            }),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text("Checkout"),
      ),
      body: CheckOutList(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 100,
        width: 100,
        child: FittedBox(
            child: PimpedButton(
              particle: DemoParticle(),
              pimpedWidgetBuilder: (context, controller){
                return FloatingActionButton(
                    splashColor: Colors.deepOrange,
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.restaurant_menu,
                      color: Colors.deepOrange,
                    ),
                    onPressed: () {
                      controller.forward(from: 0.0);
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: Text(
                                  "Your Order Has Been Placed!",
                                ),
                                content: Price());
                          });
                    });
              },
            )),
      ),
    );
  }
}

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
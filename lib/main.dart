import 'package:flutter/material.dart';
import 'package:untitled/carousel.dart';
import 'package:untitled/checkout.dart';
import 'package:untitled/section.dart';
import 'data.dart';
import 'models/delegate.dart';
import 'models/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'settings/settings.dart';


void main(){
  Bloc.observer =
  FoodBlocObserver();
  runApp(Beech());
}

class Beech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<FoodBloc>(
        create: (BuildContext context) => FoodBloc([]),
      ),
      BlocProvider<PriceCubit>(
        create: (BuildContext context) => PriceCubit(),
      )
    ],
      child:
      MaterialApp(
        title: 'Corey\'s Corner',
        theme: ThemeData(primaryColor: Colors.deepOrange),
            home: //make this a custom app
          Home()));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          elevation: 20.0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child:
                   Card(child: Image.network("https://beechmonttavern.com/wp-content/uploads/2019/07/beechmont-tavern-logo-1.png",
                   scale: 3.0,
                   ),
                   elevation: 12.0,
                     color: Colors.white,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                      child: Text("Settings", style: TextStyle(
                        fontSize: 25.0
                      ),),
                    ), Icon(Icons.settings, size: 25.0,),
                  ],
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
                },
              ),
              ListTile(title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Log Out", style: TextStyle(
                        fontSize: 25.0
                    ),),
                  ),
                  Icon(Icons.exit_to_app),
                ],
              ),
              onTap: (){

              },),
              Center(child: Column(
                children: <Widget>[
                  SizedBox(height: 10.0,),
                  Text("914-636-9533", style: drawStyle(),),
                  SizedBox(height: 10.0,),
                  Text("11:30 AM - 1:00AM", style: drawStyle(),),
                  SizedBox(height: 10.0,),
                  Text("750 North Ave, New Rochelle, NY", style: drawStyle(),)
                ],
              ),)

            ],

          )),
          appBar: AppBar(
            elevation: 20.0,
            title: const Text(
              'Corey\'s Corner',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.deepOrange,
            actions: <Widget>[
              IconButton(
                icon: new Icon(Icons.shopping_basket),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Checkout())),
                iconSize: 30.0,
              ),
            ],
          ),
          body: ListView(
            children: <Widget>[
              ImageCarousel(),
              Section(starters),
              Section(salads),
              Section(soups),
              Section(wraps),
              Section(sandwhiches),
              Section(burgers),
              Section(baskets),
              Section(hotDogs),
              Section(desserts),
            ],
          )),
    );
  }
}
TextStyle drawStyle(){
  TextStyle(
    fontSize:50.0,
    color: Colors.black
  );
}
import 'package:flutter/material.dart';
import 'package:untitled/authentication_layouts/auth.dart';
import 'models/delegate.dart';
import 'models/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//TODO refactor 0 Item details so you DRY
void main(){
  Bloc.observer =
  FoodBlocObserver();
  runApp(MyApp());
}

//SectionPanel => SectionItemList => ItemPanel

class MyApp extends StatelessWidget {
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
        theme: ThemeData(
            splashColor: Colors.white,
            primaryColor: Colors.deepOrange,
          appBarTheme: AppBarTheme(
            elevation: 16.0
          )
        ),
            home: Auth()));
  }
}



import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
//TODO add addons OLD ?
//TODO mStore User in State

enum EventType{add, delete}

class CheckOutItem{
  String name;
  double price;
  List<String> sides;


  CheckOutItem({String name, double price, List<String> sides}){
    this.name = name;
    this.price = price;
    this.sides = sides;
  }
}

class FoodEvent{
  CheckOutItem item;
  EventType eventType;

  FoodEvent.add(CheckOutItem item){
    this.eventType = EventType.add;
    this.item = item;
  }

  FoodEvent.delete(CheckOutItem item){
    this.eventType = EventType.delete;
    this.item = item;
  }
}


class FoodBloc extends Bloc<FoodEvent, List<CheckOutItem>>{
  FoodBloc(List<CheckOutItem> initialState) : super(initialState);

  List<CheckOutItem> get initialState => List<CheckOutItem>();

  @override
  Stream<List<CheckOutItem>> mapEventToState(FoodEvent event) async*{
    switch(event.eventType){
      case EventType.add:
        List<CheckOutItem> newState = List.from(state);
          newState.add(event.item);
          yield newState;
          break;
      case EventType.delete:
        List<CheckOutItem> newState = List.from(state);
        newState.remove(event.item);
        yield newState;
        break;
      default:
        throw Exception("Event not found: $event");
    }
  }

}

class PriceCubit extends Cubit<double>{
  PriceCubit() : super(0);

  void add(double price) => emit(state + price);
  void remove(double price) => emit(state - price);

}



import '../side_data.dart';

class Item{
  final String name;
  final double price;
  final List<SideList> options;
  final String info;
  final List<AddList> addOns;
  Item(this.name, this.price, this.options, this.info, this.addOns);
}
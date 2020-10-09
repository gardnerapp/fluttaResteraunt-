
//TOOD Complete bruger options and adds , dessert
//TODO fries/ no fries celery no celery sauce no sauce
//add price to extras

class Side{
  final String name;
  Side(this.name);
}

class Add{
  final String name;
  Add(this.name);
}

class AddList{
  final String msg;
  final List<Add> items;
  AddList(this.msg, this.items);
}

class SideList{
  final String msg;
  final List<Side> items;
  SideList(this.msg, this.items);
}


Side Celery = Side("Celery");
Side NoCelery = Side("No Celery");
Side Fries =Side("Fries");

Side SideSalad = Side( " Side Salad");
Side OnionRings = Side( " Onion Rings");
Side Waffle = Side( " Waffle Fries");
Side MacCheese = Side( " Mac & Cheese");
Side SweetPotato = Side( " Sweet Potato Fries");
Side SauteedVeggies = Side( " Sauteed Veggies");

Add SideSaladAdd = Add( "Side Salad");
Add OnionRingsAdd = Add( " Onion Rings");
Add WaffleAdd = Add( " Waffle Fries");
Add MacCheeseAdd = Add( " Mac & Cheese");
Add SweetPotatoAdd = Add( " Sweet Potato Fries");
Add SauteedVeggiesAdd = Add( " Sauteed Veggies");
Add VeggiesAdd = Add( " Steamed Veggies");

Side BlueCheese = Side( 'Blue Cheese ');
Side GarlicParm = Side( 'Garlic Parm ');
Add GarlicParmAdd = Add( 'Garlic Parm ');
Side SweetChilli = Side( 'Sweet Chilli');
Add SweetChilliAdd = Add( 'Sweet Chilli');
Add BlueCheeseAdd = Add(' Extra Blue Cheese');
Side Ranch = Side( 'Ranch ');
Add RanchAdd = Add(' Extra Ranch ');

Side Mild = Side( 'Mild ');
Add MildAdd = Add(' Extra Mild Sauce ');
Side Plain = Side( 'Plain ');
Side Hot = Side( 'Hot ');
Add HotAdd = Add(' Extra Hot Sauce ');
Side Teriyaki = Side( 'Teriyaki Sauce ');
Add TeriyakiAdd = Add(' Extra Teriyaki Sauce Sauce ');
Side BBQ = Side( 'BBQ ');
Add BBQAdd = Add(' Extra BBQ Sauce ');
Side Marinara = Side( 'Marinara ');
Add MarinaraAdd = Add(' Extra Marinara Sauce ');
Side Honey = Side( ' Honey Mustard ');
Add  HoneyAdd = Add(' Extra  Honey Mustard Sauce ');
Side BeerCheese = Side( 'Beer Cheese ');
Add BeerCheeseAdd = Add(' Extra Beer Cheese Sauce ');
Side Gravy = Side( 'Gravy ');
Add GravyAdd = Add(' Extra Gravy Sauce ');
Side None = Side( 'None ');
Side SourCream = Side( 'Sour Cream ');
Add SourCreamAdd = Add(' Extra Sour Cream ');
Side Chips = Side( 'Chips ');
Add ChipsAdd = Add(' Extra Chips ');
Side NoChips = Side( 'No Chips ');
Side NoFries = Side( 'No Fries ');
Add FriesAdd = Add(' Side of Fries ');
Side Cheesburger = Side( 'Cheesburger ');
Side BuffaloChicken = Side( 'Buffalo Chicken ');
Side PulledPork = Side( 'Pulled Pork ');
Side Guac = Side( 'Guac ');
Add GuacAdd = Add(' Extra Guac ');
Side PicodeGallo = Side( 'Pico de Gallo ');
Add PicodeGalloAdd = Add(' Extra Pico de Gallo ');
Side ChipolteMayo = Side( 'Chipolte Mayo ');
Add ChipolteMayoAdd = Add(' Extra Chipolte Mayo ');
Side Chicken = Side( 'Chicken ');
Side Veggie = Side( 'Veggie ');
Side Cheese = Side( 'Cheese ');
Side GrilledChicken = Side( 'Grilled Chicken ');
Side ChickenCutlet = Side( 'Chicken Cutlet ');
Side Tartar = Side( 'Tartar ');
Add TartarAdd = Add(' Extra Tartar ');

Side MediumWell = Side( " Medium Well");
Side WellDone = Side( " Well Done");
Side Medium = Side( " Medium");
Side Rare = Side( " Rare");
Side MediumRare = Side( " Medium Rare");

Add TomatoAdd = Add( " Tomato");
Add LettuceAdd = Add( " Lettuce");
Add PcikleSpearAdd = Add( " Pickle Spear");

Add MontereyJackCheeseAdd = Add( " Montery Jack Cheese");
Add SwissCheeseAdd = Add( " Swiss Cheese");
Add CheddarCheeseAdd = Add( " Cheddar Cheese");
Add RawOnionAdd = Add( " Raw Onion");
Add AmericanCheeseAdd = Add( " American Cheese");
Add SauteedOnionsAdd = Add( " Sauteed Onions");
Add MayoAdd = Add( " Mayo");
Add BaconAdd = Add( " Bacon");
Add MushroomsAdd = Add( " Mushrooms");
Add MozzarellaCheeseAdd = Add( " Mozzerella Cheese");
Add MildSauceAdd = Add( " Mild Sauce");
Add PicklesAdd = Add( " Pickles");

Side Italian = Side("Italian");
Side Balsamic = Side("Balsamic");
Side Caesar = Side("Caesar");
Side Russian = Side("Russian");

Add ItalianAdd = Add("Italian");
Add BalsamicAdd = Add("Balsamic");
Add CaesarAdd = Add("Caesar");
Add RussianAdd = Add("Russian");
Add ChickenAdd = Add("Grilled Chicken");

Side IceCream = Side("Ice Cream");
Side NoICeCream = Side("No Ice Cream");
Add ChocolateSyrup = Add("Chocolate Syrup");
Add WhippedCream = Add("Whipped Cream");
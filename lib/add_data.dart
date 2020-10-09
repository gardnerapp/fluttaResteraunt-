import 'data.dart';
import 'side_data.dart';

//Wings
SideList WingFlavors = SideList('Wing Flavors:',[Plain, Mild ,Hot ,Teriyaki ,BBQ ,SweetChilli ,GarlicParm]);
AddList ExtraWingFlavors = AddList('Extra Sauces:',[BlueCheeseAdd, RanchAdd, MildAdd,HotAdd ,TeriyakiAdd ,BBQAdd ,SweetChilliAdd ,GarlicParmAdd,]);
SideList wingSizes = SideList('Celery?', [Celery, NoCelery]);
SideList WingSauces = SideList('Blue Cheese Or Ranch?', [BlueCheese, Ranch]);

final List<SideList> wingOptions = [wingSizes, WingFlavors, WingSauces];
final List<AddList> wingExtras = [ExtraWingFlavors];

//Nachos
SideList NachoFlavors = SideList("Pork Or Chicken? ", [PulledPork, Chicken]);
AddList xtraNacho = AddList("Extra Sides?", [GuacAdd, SourCreamAdd, PicodeGalloAdd]);

final List<SideList> NachoOptions = [NachoFlavors];
final List<AddList> NachoExtras = [xtraNacho];

//Shrimp
SideList ShrimpFlavors = SideList("Shrimp Flavors:", [Plain, Mild, Hot,BBQ, Teriyaki, SweetChilli ]);
SideList ShrimpSauce = SideList("Which Dipping Sauce Would You like?", [None, BlueCheese, Ranch, Tartar]);
AddList ShrimpExtraFlavors = AddList("Extra Side Sauce?", [BlueCheeseAdd, RanchAdd, TartarAdd, MildAdd, HotAdd, BBQAdd, TeriyakiAdd, SweetChilliAdd]);


final List<SideList> ShrimpOptions = [ShrimpFlavors,ShrimpSauce];
final List<AddList> ShrimpExtras = [ShrimpExtraFlavors,];

//Chicken Fingers
SideList ChickenSauce = SideList("Choose Your Preffered Dipping Sauce", [BBQ, Honey,]);
AddList ChickenXtraSauce = AddList("Extra Sauces?", [BBQAdd, HoneyAdd, MildAdd, HotAdd]);
AddList ChickenExtraSides = AddList('Side of Fries?', [FriesAdd]);

final List<SideList> ChickOptions = [ChickenSauce,];
final List<AddList> ChickenExtras = [ChickenXtraSauce,ChickenExtraSides ];

//Dips
SideList dipSides = SideList("Chips?", [Chips, NoChips]);
AddList moreDipSides = AddList("Extra Chips?",[ChipsAdd]);

final List<SideList> DipOptions = [dipSides];
final List<AddList> DipExtras = [moreDipSides];

//Potato Skins
SideList potatoSides = SideList('Choose Your Sauces', [SourCream]);
AddList potatoExtraSides = AddList('Extra Sauce?', [SourCreamAdd]);

final List<SideList> PotatoOptions = [potatoSides];
final List<AddList> PotatoExtras = [potatoExtraSides];

//Zuchini Sticks

SideList zuchiniSides = SideList('Please Choose Your Sides.', [Marinara]);
AddList zuchiniExtraSides = AddList('Please Choose Your Sides.', [MarinaraAdd]);

final List<SideList> ZuchiniOptions = [zuchiniSides];
final List<AddList> ZuchiniExtras = [zuchiniExtraSides];

//Sliders

SideList sliderTypes = SideList("Choose Your Sliders", [Cheesburger, BuffaloChicken, PulledPork]);
SideList sliderSauces = SideList('Which Sauces Would You Prefer?', [BBQ, Honey, ChipolteMayo,]);
AddList sliderExtraSauces = AddList('Extra Sauce?', [BBQAdd, HoneyAdd, ChipolteMayoAdd, RanchAdd, BlueCheeseAdd]);
AddList sliderExtraFrie = AddList("Fries ?", [FriesAdd]);

final List<SideList> SliderOptions = [sliderTypes, sliderSauces];
final List<AddList> SliderExtras = [sliderExtraSauces, sliderExtraFrie ];

//Salsa & Guac

SideList salsaSides = SideList('Chips?', [Chips]);
AddList salsaExtras = AddList('Any Extras?', [SourCreamAdd, ChipsAdd]);

final List<SideList> SalsaOptions = [salsaSides];
final List<AddList> SalsaExtras = [salsaExtras];

//MacBite
SideList MacSauce = SideList('Any Sauces', [ChipolteMayo]);
AddList ExtraMacSauce = AddList('Extra Sauces', [ChipolteMayoAdd, SourCreamAdd, HoneyAdd]);

final List<SideList> MacOptions = [MacSauce];
final List<AddList> MacExtras = [ExtraMacSauce];

//Quesidilo
SideList qType = SideList("Which Type of Quesidellia Do You Prefer?", [ChickenCutlet, GrilledChicken, PulledPork, Veggie]);
AddList qAdditionals = AddList("Extra Dipping Sauce", [GuacAdd, SourCreamAdd, PicodeGalloAdd]);

final List<SideList> QOptions = [qType];
final List<AddList> QExtras = [qAdditionals];

//Pretzel
SideList pretzelSauce = SideList("Beer Cheese Sauce?", [BeerCheese]);
AddList pretzelExtraSauce = AddList('Extra Beer Cheese Sauce?', [BeerCheeseAdd]);

final List<SideList> PretzelOptions = [ pretzelSauce];
final List<AddList> PretzelExtras = [ pretzelExtraSauce];

SideList broccolliDip = SideList('Choose Your Sauce Here', [ChipolteMayo, SourCream]);
AddList broccolliExtraDip =AddList('Extra Sauce?', [ChipolteMayoAdd, SourCreamAdd]);

final List<SideList> BrocOptions = [ broccolliDip];
final List<AddList> BrocExtras = [ broccolliExtraDip];

SideList hogSide = SideList( "Choose Your Sides", [Waffle,SweetPotato,OnionRings, Fries, SideSalad, Veggie, SauteedVeggies, MacCheese]);
SideList hogSauces= SideList( "Sauces?", [BlueCheese, Ranch, ]);

AddList hogSideAdd = AddList( "Extra Sides?", [WaffleAdd,SweetPotatoAdd,OnionRingsAdd, FriesAdd, SideSaladAdd, VeggiesAdd, SauteedVeggiesAdd, MacCheeseAdd]);
AddList hogSaucesAdd = AddList( "Extra Sauces", [BlueCheeseAdd, RanchAdd, ]);

final List<SideList> HogOptions = [ hogSide, hogSauces];
final List<AddList> HogExtras = [ hogSaucesAdd, hogSideAdd];

SideList genericSauces= SideList( "Dipping Sauces?", [BlueCheese, Ranch, Honey, ChipolteMayo, ]);

AddList genericSidesAdd = AddList( 'Side Subtitution?', [WaffleAdd,SweetPotatoAdd,OnionRingsAdd, FriesAdd, SideSaladAdd, VeggiesAdd, SauteedVeggiesAdd, MacCheeseAdd]);
AddList genericSaucesAdd= AddList( "Additional Sauces?", [BlueCheeseAdd, RanchAdd, HoneyAdd, ChipolteMayoAdd, ]);

final List<SideList> BasketOptions = [ genericSauces];
final List<AddList> basketExtras = [ genericSaucesAdd];

final List<AddList> SandwhichExtras = [genericSidesAdd, genericSaucesAdd];

SideList genericFries = SideList("Fries?", [Fries, NoFries]);
final List<SideList> SandwhichOptions = [genericFries];

final List<SideList> WrapOptions = [genericFries];
final List<AddList> WrapExtras = basketExtras;

final List<SideList> BurgerOptions = [burgerStyle, genericFries];
final List<AddList> BurgerExtras = [burgerExtras,burgerCheese ,genericSidesAdd,];

SideList burgerStyle = SideList("How Would You Like Your Burger?", [Rare, MediumRare, Medium, MediumWell, WellDone]);
AddList burgerExtras = AddList("Additional Toppings?", [BaconAdd, TomatoAdd, PicklesAdd, SauteedOnionsAdd, RawOnionAdd, MushroomsAdd ]);
AddList burgerCheese = AddList("Cheese?",[MontereyJackCheeseAdd, SwissCheeseAdd, CheddarCheeseAdd, AmericanCheeseAdd]);

SideList saladDressings = SideList("Which type of dressing do you prefer?",[BlueCheese, Ranch,
Italian, Balsamic, Caesar, Russian
] );

final List<SideList> SaladOptions = [saladDressings];

final List<AddList> SaladExtras = [extraSaladToppings, extraSaladDressing];
AddList extraSaladDressing = AddList("Extra Dressing?", [BlueCheeseAdd, RanchAdd,
BalsamicAdd, CaesarAdd, RussianAdd]);

AddList extraSaladToppings = AddList("Extra Toppings", [BaconAdd, ChickenAdd]);

SideList iceCream = SideList("Ice Cream?", [IceCream, NoICeCream]);
AddList dessertExtras = AddList("Additional Toppings?", [ChocolateSyrup, WhippedCream]);
final List<SideList> DessertOptions = [iceCream];
final List<AddList> DessertExtras = [dessertExtras];
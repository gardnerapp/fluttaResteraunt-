import 'package:untitled/models/item.dart';
import 'package:untitled/models/section_data.dart';
import '../models/add_data.dart';




final List<Item> starterItems = [Item("Nachos ", 13.95, NachoOptions," Freshly cooked tortilla chips topped with cheese, lettuce, tomato, guacamole, sour cream and pico de gallo.", NachoExtras),
  Item("6 Traditional Beechmont's Famous Wings ", 8.95,wingOptions, "Served with homemade blue cheese and celery sticks. ", wingExtras),
  Item("12 Traditional Beechmont's Famous Wings ", 16.95,wingOptions, "Served with homemade blue cheese and celery sticks. ", wingExtras),
  Item("18 Traditional Beechmont's Famous Wings ", 23.95,wingOptions, "Served with homemade blue cheese and celery sticks. ", wingExtras),
  Item("6 Boneless Beechmont's Famous Wings ", 7.95, wingOptions, "Served with homemade blue cheese and celery sticks. ", wingExtras),
  Item("12 Boneless Beechmont's Famous Wings ", 14.95, wingOptions, "Served with homemade blue cheese and celery sticks. ", wingExtras),
  Item("18 Boneless Beechmont's Famous Wings ", 20.95, wingOptions, "Served with homemade blue cheese and celery sticks. ", wingExtras),
  Item("Buffalo Fried Shrimp", 11.95, ShrimpOptions, "Panko breaded jumbo shrimp, tossed in our signature wing sauce", ShrimpExtras),
  Item("Crock of Mac and Cheese", 11.95, null, 'Freshly made creamy mac and cheese baked to perfection', null),
  Item("5 Chicken Fingers", 11.95, ChickOptions,'Homemade chicken fingers breaded, seasoned and fried to perfection. You may pick from a side of honey mustard or BBQ sauce.', ChickenExtras),
  Item("Buffalo Chicken Dip ", 12.95, DipOptions,'Freshly cooked tortilla chips served with a creamy homemade buffalo chicken dip.', DipExtras),
  Item("Spinach Artichoke Dip ", 12.95, DipOptions,'A blend of Parmesan and cheddar cheese with fresh spinach and artichokes. Served with homemade tortilla chips', DipExtras),
  Item("4 Potato Skins ", 11.95, PotatoOptions,'4 pieces. Homemade and stuffed with cheddar cheese and bacon. Served with a side of sour cream. ', PotatoExtras),
  Item("Zucchini Sticks ", 11.95, ZuchiniOptions,'Lightly breaded and fried to a crisp, served with a side of homemade marinara', ZuchiniExtras),
  Item("Chili ", 11.95, DipOptions,'Fresh ground beef cooked with black beans and onions. Served w/ a side of chips', DipExtras),
  Item("6 Mozzarella Sticks ", 11.95, ZuchiniOptions, 'Italian seasoned mozzarella, fried until golden brown and served with a side of our homemade marinara sauce.', ZuchiniExtras),
  Item("Jalapeno Poppers ", 11.95, PotatoOptions, 'Breaded jalapenos stuffed with cheddar cheese. Served with a side of sour cream for dipping.', PotatoExtras),
  Item("Beechmont Sliders ", 12.95, SliderOptions,'Our sliders are served as followers: Cheese Burger: Lettuce, tomato & pickle Pulled Pork: Pickles Buff Chicken: Blue Cheese dressing & Jalapeño', SliderExtras),
  Item("Salsa and Guacamole ", 13.95, SalsaOptions ,'Our salsa and guacamole is freshly made in-house and served with a side of tortilla chips.', SalsaExtras),
  Item("6 Mac and Cheese Bites ", 11.95, MacOptions ,'Homemade mac and cheese battered and fried to perfection, served with chipotle mayo.', MacExtras),
  Item("3 Pretzel Rods ", 12.95, PretzelOptions,'Served with a side of homemade cheese sauce.', PretzelExtras),
  Item("Quesadilla ", 13.95, QOptions,'Soft flour tortillas stuffed with melted Monterey Jack and cheddar cheese. Served with a side of homemade guacamole, pico de gallo and sour cream and choice of filling.', QExtras),
  Item("Pulled Pork Nachos ", 13.95, NachoOptions,'Tortilla chips covered with shredded cheddar, Monterrey jack cheese and BBQ pulled pork. Topped with sour cream, pico de gallo and guacamole.', NachoExtras),
  Item("Broccoli Bites ", 11.95, BrocOptions,'Breaded broccoli & cheddar cheese stuffed w/ bacon in a potato-flake breading. Served w/ a side of sour cream.', BrocExtras),
];

final List<Item> hotDogItems = [Item("Devil Dogs ", 12.95, HogOptions, '2 grilled hot dogs topped with homemade chipotle dressing, crispy bacon and homemade pico de gallo. Served with choice of side. ', HogExtras),
  Item("Chili Cheese Dogs ", 12.95, HogOptions, '2 hot dogs topped with our homemade chili and melted shredded cheddar and Monterey Jack cheese. Served with choice of side. ', HogExtras),
  Item("Bacon Mac and Cheese Dogs ", 12.95, HogOptions, '2 hot dogs topped with our homemade creamy macaroni and cheese along with crispy bacon. Served with choice of side. ', HogExtras),
  Item("Hot Dogs ", 11.95, HogOptions, 'Two plain hot dogs served w/ choice of side. ', HogExtras),];

final List<Item> basketItems = [Item("Disco Fries Basket ", 6.95 , null, 'French fries covered in melted mozzarella cheese, served w/ a side of gravy. ', basketExtras),
  Item("Waffle Fries Basket ", 5.95,   null, 'Seasoned fries cut and pressed using a waffle iron to give it a unique look and great flavor', basketExtras),
  Item("Bacon Chipotle Cheese Fries Basket ", 6.95,  null, 'Fries topped w/ cheese, chipotle mayo and bacon. ', basketExtras),
  Item("Fries Basket ", 4.95,  null, 'Extra crispy fries , fried to perfection. ', basketExtras),
  Item("Beer Battered Onion Rings Basket ", 5.95 , BasketOptions, 'Steak cut beer battered onion rings served w/ a side of chipotle mayo for dipping! ', basketExtras),
  Item("Sweet Potato Fries Basket ", 5.95,  null, "Fries made from sweet potato." , basketExtras ),
  Item("Chili Cheese Fries Basket ", 6.95,  null, 'Fries topped w/ cheese and homemade chili ', basketExtras),
  Item("Crabby Fries ", 5.95 ,  null, ' Crispy fries tossed in Old bay seasoning served w/ a side of Boston Lager Beer Cheese Sauce', basketExtras
  ),
];

final List<Item> dessertItems = [Item("Brownie Sundae ",  5.95, DessertOptions, 'Homemade brownie topped with vanilla ice cream, chocolate syrup and whipped cream', DessertExtras),
Item("Fried Oreos ", 4.95, DessertOptions, ' Home made fried oreos with a scoop of ice cream, chocolate syrup and whipped cream',  DessertExtras),
Item("Ice Cream Sundae ", 4.95, null, ' Bowl of ice cram served with whipped cream, chocolate syrup.', null),
Item("Cheese Cake ", 5.95 , null, ' Rich & Creamy New York Cheesecake!',  null),
  Item("Carrot Cake ", 5.95, null, ' Now serving Carrot Cake ! Our triple layer carrot cake is made w/ sliced walnuts, golden rasins & cream cheese. Allergy:This item contains nuts',  null),
 ];

final List<Item> saladItems =[Item("Garden Salad ", 13.95 , SaladOptions, 'Fresh mixed greens topped with sliced tomato, cucumber, red onion and homemade croutons. ', SaladExtras),
  Item("Caesar Salad ", 13.95, SaladOptions, 'Fresh chopped romaine lettuce covered with imported Italian Parmesan cheese and homemade croutons. ', SaladExtras),
  Item("Cobb Salad ", 14.95 , SaladOptions, 'Fresh mixed greens with fresh hard boiled eggs, crispy bacon, sliced avocado, Monterey Jack cheese and homemade croutons. ', SaladExtras),
  Item("Buffalo Chicken Salad ", 16.95 , SaladOptions, 'Freshly made chicken cutlet tossed in our famous mild sauce over a bed of fresh mixed greens, sliced tomatoes, Monterey Jack cheese along with a side of our homemade blue cheese dressing. Spicy. ', SaladExtras),
  Item("Goat Cheese Pear Salad ", 14.95 , SaladOptions, 'Fresh mixed greens topped with homemade candied walnuts, caramelized pears, crumbled goat cheese and dried cranberries. ', SaladExtras)];

final List<Item> soupItems = [Item("French Onion Soup ", 6.95, null, 'Homemade beef broth cooked with fresh caramelized onions, a homemade garlic crouton and topped with baked provolone cheese. ', null),
  Item("Soup of The Day", 5.95, null, "Your guess is as good as ours", null),
  ];

final List<Item> sandwhichItems = [Item("M.A.A.C. Madness Sandwich ", 14.95 , SandwhichOptions, 'Freshly breaded chicken cutlet on a wedge topped with crispy bacon, melted cheddar cheese and BBQ sauce. Served with choice of side. ', SandwhichExtras),
Item("Chicken Parm Wedge Sandwich ", 14.95, SandwhichOptions, 'Freshly breaded chicken cutlet on a garlic wedges topped with melted mozzarella and homemade marinara sauce. Served with choice of side', SandwhichExtras),
Item("Beechmont Grill Sandwich ", 14.95 , SandwhichOptions, 'Perfectly grilled chicken breast served on a seeded roll with lettuce, tomato and mayo. You may pick to have chicken Cajun, BBQ or Buffalo style. Served with choice of side. ', SandwhichExtras),
Item("Philly Cheesesteak Sandwich ", 15.95, SandwhichOptions, 'Seasoned steak mixed with sauteed peppers and onions on a wedge topped with melted American cheese. Served with choice of side . ', SandwhichExtras),
Item("Turkey Pesto Panini ", 16.95 , SandwhichOptions, 'Turkey breast, pesto, tomato, avocado, mayo, bacon, and provolone cheese. Served with fries. ', SandwhichExtras),
Item("Chicken Bacon Ranch Panini ", 14.95, SandwhichOptions, 'Fresh grilled chicken breast sliced thin, topped with melted cheddar cheese, spicy mustard, crispy bacon and ranch. Served with choice of side. ', SandwhichExtras),
Item("French Dip Sandwich ", 14.95,  SandwhichOptions, 'Thinly sliced fresh roast beef on a toasted garlic wedge with melted Swiss cheese, sauteed onions and a side of au jus sauce for dipping. Served with choice of side. ', SandwhichExtras),];

final List<Item> wrapItems = [Item("The Ionian Wrap ", 14.95, WrapOptions, 'Freshly breaded chicken cutlet topped with melted Monterey Jack cheese, honey mustard, fresh cut lettuce and tomato. Served with choice of side. ', WrapExtras),
  Item("Cajun Wrap ", 14.95 , WrapOptions, 'Cajun style grilled chicken topped with melted Monterey Jack cheese, chipotle dressing, fresh chopped lettuce and diced tomatoes. Served with choice of side. ', WrapExtras),
  Item("Buffalo Shrimp Wrap ", 14.95, WrapOptions, ' Panko breaded jumbo butterfly shrimp tossed in our famous mild sauce with chopped lettuce, tomatoes, and homemade blue cheese. Served with choice of side. Spicy.', WrapExtras),
  Item("Chicken Caesar Wrap ", 14.95 , WrapOptions, ' Fresh grilled chicken breast with romaine lettuce, imported Parmesan cheese and Caesar dressing. Served with choice of side .', WrapExtras),
  Item("Beechmont Wrap ", 14.95, WrapOptions, ' Perfectly grilled chicken breast with Italian imported mozzarella cheese, fresh roasted red peppers and balsamic dressing. Served with choice of side.', WrapExtras),
  Item("North Ave Wrap ", 14.95 , WrapOptions, ' Oven roasted turkey breast sliced thin with melted cheddar cheese, crispy bacon, chopped lettuce, tomato and mayo. Served with choice of side.', WrapExtras),
  Item("Buffalo Chicken Wrap ", 14.95, WrapOptions, ' Fresh chicken cutlet tossed in our famous homemade mild sauce with lettuce, tomatoes, and homemade blue cheese. Served with choice of side. Spicy.', WrapExtras),
  Item("The Levee Wrap ", 14.95, WrapOptions, ' Freshly made chicken cutlet tossed in our famous mild sauce or BBQ topped with crispy bacon and stuffed with our creamy homemade macaroni and cheese. Served with choice of side.', WrapExtras),
  Item("Roast Beef Wrap ", 13.95, WrapOptions, ' A wrap stuffed w/ roast beef, Swiss cheese, lettuce, tomato & Russian dressing.', WrapExtras),];

final List<Item> burgerItems = [Item("New Ro Burger ", 15.95, BurgerOptions, ' Our signature 1/2 lb. handmade patty topped with melted cheddar cheese, crispy bacon, homemade guacamole and our famous wing sauce. Served on seeded bun with lettuce, tomato and fries.', BurgerExtras ),
  Item("Black Bean Burger ", 16.9,  BurgerOptions, ' A delicious chipotle seasoned black bean burger topped with chipotle dressing and avocado tomato salsa. Served on seeded bun with lettuce, tomato and fries. Vegetarian.', BurgerExtras),
  Item("Gael Burger ", 15.95 , BurgerOptions, ' Our signature 1/2 lb. homemade patty topped with melted American cheese, sauteed onions, mushrooms and crispy bacon. Served on seeded bun with lettuce, tomato and fries.', BurgerExtras),
  Item("Classic Beechmont Burger ", 14.95 , BurgerOptions, ' Handmade patty made with Arthur Avenue chopped meat. Served on choice of bun. Served with lettuce, tomato and fries.', BurgerExtras),
  Item("Westchester Burger ", 15.95 , BurgerOptions, ' Angus burger topped w/ Swiss cheese, sauteed onions, BBQ sauce & Chili', BurgerExtras),
  Item("Breakfast Burger ", 15.95 , BurgerOptions, ' 1/2lb Angus burger topped w/ American Cheese, bacon & an egg. Served on a seeded potato bun w/ lettuce, tomato, fries & a pickle.', BurgerExtras),];

var starters = SectionData("Starters", starterItems);
var sandwhiches = SectionData("Sandwhiches",sandwhichItems);
var wraps = SectionData("Wraps", wrapItems);
var burgers = SectionData("Burgers", burgerItems);
var hotDogs = SectionData("Hot Dogs", hotDogItems);
var baskets = SectionData("Baskets", basketItems);
var soups = SectionData("Soups", soupItems);
var salads = SectionData("Salads", saladItems);
var desserts = SectionData("Desserts", dessertItems);



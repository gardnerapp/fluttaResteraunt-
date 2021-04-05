import 'package:flutter/material.dart';
import 'package:untitled/carousel.dart';
import 'package:untitled/components/MyAppBar.dart';
import 'package:untitled/components/MyDrawer.dart';
import 'package:untitled/menu/section_panel.dart';
import 'data/menu_data.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: myAppBar(context),
        body: ListView(
          padding: EdgeInsets.all(2.0),
          children: <Widget>[
            ImageCarousel(),
            // Panels/section
            SectionPanel(starters),
            SectionPanel(salads),
            SectionPanel(soups),
            SectionPanel(wraps),
            SectionPanel(sandwhiches),
            SectionPanel(burgers),
            SectionPanel(baskets),
            SectionPanel(hotDogs),
            SectionPanel(desserts),
          ],
        ));
  }
}
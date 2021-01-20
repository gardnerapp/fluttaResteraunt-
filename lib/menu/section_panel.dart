import 'package:flutter/material.dart';
import 'package:untitled/panels/panel.dart';
import 'section_Item_list.dart';
import '../data.dart';

//Section Name, Routes to list of items in section
// Styling from panel
class SectionPanel extends StatelessWidget {
  final SectionData data;

  SectionPanel(this.data);

  @override
  Widget build(BuildContext context) {
    return Panel(
      child: Directionality(
          textDirection: TextDirection.ltr,
          child: Text(data.sectionName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
              ))),
      color: Colors.deepOrange,
      sideColor: Colors.white,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SectionItemList(data)));
      },
    );
  }
}




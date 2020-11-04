import 'package:flutter/material.dart';
import 'menu_list.dart';
import 'data.dart';

class Section extends StatelessWidget {
  final SectionData data;

  Section(this.data);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Menu(data)),
      );
    },
      child:
      Directionality(textDirection:TextDirection.ltr, child: Text(data.sectionName, style: TextStyle(
          color: Colors.white, fontSize: 32.0,
      ))),
      color: Colors.deepOrange,
      padding: EdgeInsets.all(20.0),
      splashColor: Colors.transparent,
      colorBrightness: Brightness.light,
      textTheme: ButtonTextTheme.primary,
      elevation: 20.0,
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
    side: BorderSide(color: Colors.white)),

      );
  }
}

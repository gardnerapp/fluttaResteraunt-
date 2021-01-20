import 'package:flutter/material.dart';

//Panel Holder For Section and Item Tiles
class Panel extends StatelessWidget {
  final Widget child;
  final Color color;
  final Color sideColor;
  final Function onPressed;
  const Panel({Key key, this.child, this.color, this.sideColor, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: child,
      color: color,
      splashColor: Colors.transparent,
      colorBrightness: Brightness.light,
      textTheme: ButtonTextTheme.primary,
      elevation: 20.0,
      padding: EdgeInsets.all(15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(color: sideColor )
      ),
    );
  }
}

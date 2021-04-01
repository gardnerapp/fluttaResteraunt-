import 'package:flutter/material.dart';

customRaisedIconButton(String label, Icon icon,BuildContext context, Function onPressed,){
  return RaisedButton.icon(
    onPressed: onPressed,
    icon: icon,
    label: Text(label, style: TextStyle(color: Colors.black87, fontSize: 30.0)),
    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
    elevation: 10.0,
    color: Theme.of(context).primaryColor,
    splashColor: Theme.of(context).splashColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
  );
}






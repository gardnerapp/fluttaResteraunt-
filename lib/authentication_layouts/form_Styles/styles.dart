import 'package:flutter/material.dart';

textInputDecoration(String label, BuildContext context){
  return InputDecoration(
    labelText: label,
    labelStyle: TextStyle(
      color: Colors.black87, fontSize: 20.0
    ),
    fillColor: Colors.white,
    filled: true,
    enabledBorder: formBorder(Theme.of(context).primaryColor),
    focusedBorder: formBorder(Theme.of(context).primaryColor),
    errorBorder: formBorder(Colors.red),
    contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
  );
}

OutlineInputBorder formBorder(Color color) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(color: color, width: 3.0));
}

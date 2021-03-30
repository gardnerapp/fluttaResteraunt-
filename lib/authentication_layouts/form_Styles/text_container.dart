import 'package:flutter/material.dart';

class TextFormContainer extends StatelessWidget {
  final Widget child;

  const TextFormContainer({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      child: child
    );
  }
}

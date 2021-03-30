import 'package:flutter/material.dart';
import 'package:untitled/authentication_layouts/signin.dart';
import 'package:untitled/authentication_layouts/signup.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool showSignUp = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Corey\'s Corner'
        ),
        leading: IconButton(icon: Icon(Icons.swap_horiz), onPressed: (){
          setState(() {
            showSignUp = !showSignUp;
          });
        }),
      ),
      body: Container(
        child: showSignUp ? SignUp() : SignIn(),
      ),
    );
  }
}

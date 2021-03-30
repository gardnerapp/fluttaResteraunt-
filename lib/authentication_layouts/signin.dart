import 'dart:html';

import 'package:flutter/material.dart';
import 'package:untitled/api/authentication.dart';
import 'package:untitled/authentication_layouts/form_Styles/text_container.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  AuthenticationRequest auth = AuthenticationRequest();
  final _key = GlobalKey<FormState>();
  String phone;
  String passwrd;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
      child: Form(
        key: _key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 70.0,),
            Text('Sign In'),
            SizedBox(height: 30.0,),
            TextFormContainer(
              child: TextFormField(
                // todo  decoration: ,
                onChanged: (val) => setState(()=> phone = val),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextFormContainer(
              child: TextFormField(
                // todo  decoration: ,
                onChanged: (val) => setState(()=> passwrd = val),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            GestureDetector(
              child: Text(
                "Forgot Password ?",
                style: TextStyle(
                    fontSize: 18.0, decoration: TextDecoration.underline),
              ),
              onTap: (){
                /*Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  ResetPassword()
                ));*/
              },
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(

            )
          ],
        ),
      ),
    );
  }
}

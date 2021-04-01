import 'dart:html';

import 'package:flutter/material.dart';
import 'package:untitled/api/authentication.dart';
import 'package:untitled/authentication_layouts/form_Styles/customRaisedIconButton.dart';
import 'package:untitled/authentication_layouts/form_Styles/raisedButtonIcon.dart';
import 'package:untitled/authentication_layouts/form_Styles/styles.dart';
import 'form_Styles/textFornContainer.dart';

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
                decoration: textInputDecoration("Phone", context) ,
                onChanged: (val) => setState(()=> phone = val),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextFormContainer(
              child: TextFormField(
                decoration: textInputDecoration("Password", context),
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
            TextFormContainer(
              child: customRaisedIconButton(
                  "Sign In", raisedButtonIcon(Icons.send), context, () {}),
            )
          ],
        ),
      ),
    );
  }
}

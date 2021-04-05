import 'package:flutter/material.dart';
import 'package:untitled/api/authentication.dart';
import 'package:untitled/authentication_layouts/form_Styles/textFornContainer.dart';
import '../home.dart';
import 'form_Styles/customRaisedIconButton.dart';
import 'form_Styles/raisedButtonIcon.dart';
import 'form_Styles/styles.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  AuthenticationRequest auth = AuthenticationRequest();
  final _key = GlobalKey<FormState>();
  String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Reset'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
        child: Center(
          child: Form(
              key: _key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Please Follow The Instructions Sent To Your Email",
                    style: TextStyle(
                        fontSize: 20.0
                    ),
                  ),
                  SizedBox(height: 35),
                  TextFormContainer(
                    child: TextFormField(
                      decoration: textInputDecoration("Email", context),
                      onChanged: (val) => setState(() => email = val),
                    ),
                  ),
                  SizedBox(height: 35),
                  TextFormContainer(
                    child: customRaisedIconButton(
                        "Reset Password", raisedButtonIcon(Icons.send),
                        context, () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()));
                    }),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
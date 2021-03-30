import 'dart:convert';

import 'package:untitled/api/base.dart';
import 'package:http/http.dart' as http;

class AuthenticationRequest extends Base{

  Future<http.Response> createUser(String name, String email, String phone,
      String password, String passwordConfirmation) async {
    var body = jsonEncode({
      'user': {
        "name": name,
        "email": email,
        "phone": phone,
        "password": password,
        "password_confirmation": passwordConfirmation,
      }
    });

    http.Response response =
        await http.post(super.userPath, headers: headers, body: body);

    return response;
  }

  Future<http.Response> loginUser(String phone, String password) async {
    var body = jsonEncode({
      'user': {'phone': phone, 'password': password}
    });

    http.Response response =
        await http.post(super.loginPath, headers: headers, body: body);

    return response;
  }
}
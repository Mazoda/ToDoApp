import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:to_do_app/Models/User_Model.dart';

class AuthHelper {
  AuthHelper._();
  static AuthHelper authHelper = AuthHelper._();
  final signUpUri = Uri.https('todo-api.yooums.repl.co', '/auth/signup');
  final signInUri = Uri.https('todo-api.yooums.repl.co', '/auth/login');

  signUp(String email, String name, String password,
      String confirmPassword) async {
    final request = http.MultipartRequest('POST', signUpUri)
      ..fields.addAll({
        'email': email,
        'name': name,
        'password': password,
        'confirmPassword': confirmPassword
      });

    http.StreamedResponse response = await request.send();
    response.stream.bytesToString();

    if (response.statusCode == 200) {
      return true;
    } else if (response.statusCode == 400) {
      return false;
    }
  }

  signIn(String email, String password) async {
    var request = http.MultipartRequest('Post', signInUri);

    request.fields.addAll({'email': email, 'password': password});

    http.StreamedResponse response = await request.send();
    var data = await response.stream.bytesToString();
    final mapData = json.decode(data);
    User user = User.fromJson(mapData["user"]);
  }
}

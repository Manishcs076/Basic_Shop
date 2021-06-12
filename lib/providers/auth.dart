import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
//import 'package:provider/provider.dart';

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _userId;

  Future<void> signup(String email, String password) async {
    const url =
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDMpoRNM5ByARUyCvWPQ_Hho7MbnKDfZL4';
    final response = await http.post(
      url,
      body: json.encode(
        {'email': email, 'password': password, 'returnSecureToken': true},
      ),
    );
    print(json.decode(response.body));
  }
}

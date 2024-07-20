
import 'package:firstfirebase/E-Commerce/usermodel.dart';
import 'package:flutter/material.dart';
//import 'user.dart';

class UserProvider with ChangeNotifier
{
  User? _user;

  User? get user => _user;

  void login(String username)
  {
    _user = User(username: username);
    notifyListeners();
  }
  
}

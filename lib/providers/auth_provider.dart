import 'package:flutter/material.dart';
import 'package:shamo_apps/models/user_model.dart';
import 'package:shamo_apps/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      // print('auth_provider running');
      UserModel user = await AuthService().register(
        name: name,
        username: username,
        email: email,
        password: password,
      );

      // print('auth_provider done');
      // print(user);

      _user = user;
      return true;
    } catch (e) {
      // print('authprovider error');
      print(e);
      return false;
    }
  }

  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      // print('auth_provider running');
      UserModel user = await AuthService().login(
        email: email,
        password: password,
      );

      // print('auth_provider done');
      // print(user);

      _user = user;
      return true;
    } catch (e) {
      // print('authprovider error');
      print(e);
      return false;
    }
  }
}

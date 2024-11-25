import 'package:flutter/material.dart';
import 'package:smartif/data/models/login_models.dart';
import 'package:smartif/data/models/sessoin_token_models.dart';
import 'package:smartif/data/repositories/login_repository.dart';
import 'package:smartif/data/services/token_service.dart';

class LoginController extends ChangeNotifier {
  bool isloading = false;
  SessionTokenLogin? token;
  late String error;
  LocalStorageSessoin localStorageSessoin = LocalStorageSessoin();

  Future<void> login(LoginModels credentials) async {
    isloading = true;
    try {
      token = await LoginRepository().login(credentials);
      await localStorageSessoin.save(token!);
      notifyListeners();
    } catch (e) {
      error = e.toString();
    } finally {
      isloading = false;
      notifyListeners();
    }
  }

  Future<void> logout() async {
    await localStorageSessoin.delete();
  }

  Future<void> checkSessionLogin() async {
    final token = await localStorageSessoin.get();
    if (token != null) {
      this.token = token;
      notifyListeners();
    }
  }
}

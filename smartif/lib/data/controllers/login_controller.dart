import 'package:flutter/material.dart';
import 'package:smartif/data/models/login_models.dart';
import 'package:smartif/data/models/sessoin_token_models.dart';
import 'package:smartif/data/repositories/login_repository.dart';
import 'package:smartif/data/services/token_service.dart';

class LoginController extends ChangeNotifier {
  bool isloading = false;
  SessionTokenLogin? token;
  late String error;

  Future<void> login(LoginModels credentials) async {
    isloading = true;
    try {
      final token = await LoginRepository().login(credentials);
      await LocalStorageSessoin().save(token);
      this.token = token;
    } catch (e) {
      error = e.toString();
    } finally {
      isloading = false;
      notifyListeners();
    }
  }

  Future<void> logout() async {
    await LocalStorageSessoin().delete();
  }

  Future<void> checkSessionLogin() async {
    final token = await LocalStorageSessoin().get();
    if (token != null) {
      this.token = token;
      notifyListeners();
    }
  }
}

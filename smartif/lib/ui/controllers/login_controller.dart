import 'package:flutter/material.dart';
import 'package:smartif/data/models/login_models.dart';
import 'package:smartif/data/repositories/login_repository.dart';
import 'package:smartif/data/services/token_service.dart';

class LoginController extends ChangeNotifier {
  bool islogin = false;
  bool isloading = false;
  late String error;

  Future<void> login(LoginModels credentials) async {
    isloading = true;
    try {
      final repository = LoginRepository().login(credentials);
      SessoinStorage().add(repository);
    } catch (e) {
      error = e.toString();
    } finally {
      isloading = false;
    }
  }

  Future<void> logout() async {
    SessoinStorage().delete();
  }

  Future<void> checkSessionLogin() async {}
}

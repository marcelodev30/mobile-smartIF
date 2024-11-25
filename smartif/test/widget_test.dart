import 'package:flutter/material.dart';
import 'package:smartif/data/controllers/login_controller.dart';
import 'package:smartif/data/models/login_models.dart';
import 'package:smartif/data/models/sessoin_token_models.dart';
import 'package:smartif/data/services/token_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //DispositivoController a = DispositivoController();
  //await a.fetchAll();
  //LoginController a = LoginController();
  //await a.login(LoginModels(login: 'marcelo', senha: 'ash'));
  //debugPrint(a.token!.accessToken);

  LocalStorageSessoin localStorageSessoin = LocalStorageSessoin();
  localStorageSessoin.save(SessionTokenLogin(
      accessToken: 'marcelo alves', rereshToken: 'marcelo aaaa'));
  String a = await localStorageSessoin.getToken();
  print(a);
}



  
  //await a.sedComando(DispositivoComando(id: 1, comando: 'on'));
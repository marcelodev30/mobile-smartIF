import 'package:flutter/material.dart';
import 'package:smartif/data/controllers/dispositivo_controller.dart';
import 'package:smartif/data/controllers/login_controller.dart';
import 'package:smartif/data/models/login_models.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //DispositivoController a = DispositivoController();
  //await a.fetchAll();
  LoginController a = LoginController();
  await a.login(LoginModels(login: 'marcelo', senha: 'ash'));
  print(a.token!.accessToken);
}



  
  //await a.sedComando(DispositivoComando(id: 1, comando: 'on'));
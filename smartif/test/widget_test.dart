import 'package:flutter/material.dart';
import 'package:smartif/data/controllers/dispositivo_controller.dart';

import 'package:smartif/data/models/dispositivos.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //LoginController a = LoginController();
  //await a.login(LoginModels(login: 'marcelo', senha: 'ash'));
  //print(a.token!.accessToken);

  DispositivoController a = DispositivoController();
  await a.fetchAll();

  List<DispositivosModels> aa = a.dispositivosModels;
  //await a.sedComando(DispositivoComando(id: 1, comando: 'on'));
  print(aa[0].sala!.nome);
}

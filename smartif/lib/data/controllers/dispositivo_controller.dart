import 'package:flutter/material.dart';
import 'package:smartif/data/models/dispositivo_comando.dart';
import 'package:smartif/data/models/dispositivos.dart';
import 'package:smartif/data/repositories/dispositivos_repository.dart';

class DispositivoController extends ChangeNotifier {
  bool isloading = false;
  late List<DispositivosModels> dispositivosModels;
  String? error;
  final DispositivosRepository repository = DispositivosRepository();

  Future<void> fetchAll() async {
    isloading = true;
    try {
      dispositivosModels = await repository.fetchAll();
    } catch (e) {
      error = e.toString();
    } finally {
      isloading = false;
      notifyListeners();
    }
  }

  Future<void> sedComando(DispositivoComando comando) async {
    isloading = true;
    try {
      await repository.sedComando(comando);
    } catch (e) {
      error = e.toString();
    } finally {
      isloading = true;
      notifyListeners();
    }
  }
}

import 'package:smartif/data/interface/dispositivo_interface.dart';
import 'package:smartif/data/models/dispositivo_comando.dart';
import 'package:smartif/data/models/dispositivos.dart';
import 'package:smartif/data/models/dispositivos_status.dart';

class DispositivosRepository extends DispositivoInterface {
  @override
  Future<DispositivosModels> fetchAll() {
    throw UnimplementedError();
  }

  @override
  Future<DispositivoComando> fetchByIdComando(String id) {
    throw UnimplementedError();
  }

  @override
  Future<DispositivoStatus> fetchStatusAll() {
    throw UnimplementedError();
  }

  @override
  Future<void> sedComando(DispositivoComando comando) {
    throw UnimplementedError();
  }
}

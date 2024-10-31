import 'package:smartif/data/models/dispositivo_comando.dart';
import 'package:smartif/data/models/dispositivos.dart';
import 'package:smartif/data/models/dispositivos_status.dart';

abstract class DispositivoInterface {
  Future<DispositivosModels> fetchAll();
  Future<DispositivoStatus> fetchStatusAll();
  Future<void> sedComando(DispositivoComando comando);
  Future<DispositivoComando> fetchByIdComando(String id);
}

import 'package:smartif/data/models/dispositivos.dart';
import 'package:smartif/data/models/dispositivos_status.dart';

abstract class DispositivoInterface {
  Future<List<DispositivosModels>> fetchAll();
  Future<List<DispositivoStatus>> fetchStatusAll();
  Future<void> sedComando(String id);
  //Future<List<DispositivoComando>> fetchAllComandoDispositivo(String id);
}

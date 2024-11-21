import 'package:smartif/data/interface/dispositivo_interface.dart';
import 'package:smartif/data/models/dispositivos.dart';
import 'package:smartif/data/models/dispositivos_status.dart';
import 'package:smartif/data/repositories/instance/dio_app.dart';

class DispositivosRepository extends DispositivoInterface {
  @override
  Future<List<DispositivosModels>> fetchAll() async {
    final response = await DioApp().dio.get('/dispositivos');
    if (response.statusCode == 200) {
      return (response.data as List)
          .map((dispositivo) => DispositivosModels.fromJson(dispositivo))
          .toList();
    } else {
      return [];
    }
  }

  @override
  Future<List<DispositivoStatus>> fetchStatusAll() {
    throw UnimplementedError();
  }

  @override
  Future<void> sedComando(String id) async {
    await DioApp().dio.post('/dispositivo/controle/estado', data: {"id": id});
  }
}

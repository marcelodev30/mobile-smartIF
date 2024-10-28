import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartif/data/models/sessoin_token_models.dart';
import 'package:smartif/interface/locastorage_interface.dart';

class LocalStorageSessoin extends LocalStorage {
  final String _keydatabase = 'mykeytoken';
  @override
  Future<void> delete() async {
    final SharedPreferences database = await SharedPreferences.getInstance();
    await database.remove(_keydatabase);
  }

  @override
  Future<SessionTokenLogin?> get() async {
    final SharedPreferences database = await SharedPreferences.getInstance();
    final String? dados = database.getString(_keydatabase);
    if (dados != null) {
      return SessionTokenLogin.fromString(dados);
    }
    return null;
  }

  @override
  Future<void> save(SessionTokenLogin sessoin) async {
    final SharedPreferences database = await SharedPreferences.getInstance();
    await database.setString(_keydatabase, sessoin.toString());
  }
}

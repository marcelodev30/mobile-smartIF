import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartif/data/models/sessoin_token_models.dart';

class LocalStorageSessoin {
  final String _keydatabase = 'mykeytoken';

  Future<void> delete() async {
    final SharedPreferences database = await SharedPreferences.getInstance();
    await database.remove(_keydatabase);
  }

  Future<SessionTokenLogin?> get() async {
    final SharedPreferences database = await SharedPreferences.getInstance();
    final String? dados = database.getString(_keydatabase);
    if (dados != null) {
      return SessionTokenLogin.fromString(dados);
    }
    return null;
  }

  Future<void> save(SessionTokenLogin sessoin) async {
    final SharedPreferences database = await SharedPreferences.getInstance();
    await database.setString(_keydatabase, sessoin.toString());
  }

  Future<String> getToken() async {
    SessionTokenLogin? instance = await get();
    return instance!.accessToken;
  }
}

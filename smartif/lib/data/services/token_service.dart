import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartif/data/models/sessoin_token_models.dart';

class LocalStorageSessoin {
  late SharedPreferences database;
  final String _keydatabase = 'mykeytoken';

  void init() async {
    database = await SharedPreferences.getInstance();
  }

  Future<void> delete() async {
    await database.remove(_keydatabase);
  }

  Future<SessionTokenLogin?> get() async {
    database = await SharedPreferences.getInstance();
    final String? dados = database.getString(_keydatabase);
    if (dados != null) {
      return SessionTokenLogin.fromString(dados);
    }
    return null;
  }

  Future<void> save(SessionTokenLogin sessoin) async {
    database = await SharedPreferences.getInstance();
    await database.setString(_keydatabase, sessoin.toString());
  }

  Future<String> getToken() async {
    database = await SharedPreferences.getInstance();
    SessionTokenLogin? instance = await get();
    return instance!.accessToken;
  }
}

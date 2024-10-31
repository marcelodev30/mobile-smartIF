import 'package:smartif/data/models/sessoin_token_models.dart';

abstract class LocalStorage {
  Future<void> save(SessionTokenLogin sessoin);
  Future<SessionTokenLogin?> get();
  Future<void> delete();
}

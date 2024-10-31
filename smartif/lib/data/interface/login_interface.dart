import 'package:smartif/data/models/login_models.dart';
import 'package:smartif/data/models/sessoin_token_models.dart';

abstract class LoginInterface {
  Future<SessionTokenLogin> login(LoginModels loginModels);
}

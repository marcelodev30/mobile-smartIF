import 'package:dio/dio.dart';
import 'package:smartif/config/app_string.dart';
import 'package:smartif/data/models/login_models.dart';
import 'package:smartif/data/models/sessoin_token_models.dart';

class LoginRepository {
  Future<SessionTokenLogin> login(LoginModels loginModels) async {
    final dio = Dio();
    dio.options.baseUrl = AppString.baseUrl;
    final reponse = await dio.post('/login/', data: loginModels.toJson());
    if (reponse.statusCode == 200) {
      return SessionTokenLogin.fromJson(reponse.data);
    } else {
      return SessionTokenLogin(accessToken: '', rereshToken: '');
    }
  }
}

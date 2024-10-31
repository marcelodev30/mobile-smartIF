import 'package:dio/dio.dart';
import 'package:smartif/config/app_string.dart';

import 'package:smartif/data/services/token_service.dart';

class DioApp {
  final _dio = Dio();
  Dio get dio => _dio;
  late String token;

  getdados() async {
    token = await LocalStorageSessoin().getToken();
  }

  DioApp() {
    getdados();
    _dio.options.baseUrl = AppString.baseUrl;
    _dio.options.headers["authorization"] = "Bearer $token";
  }
}

import 'package:dio/dio.dart';
import 'package:smartif/config/app_string.dart';

import 'package:smartif/data/services/token_service.dart';

class DioApp {
  final _dio = Dio();
  Dio get dio => _dio;
  late String token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzMyNTI2MTQ0LCJpYXQiOjE3MzI0OTczNDQsImp0aSI6IjA5MmZhNmRjYTZmODQ2ODZiYzgwZTBhNGZjZTgwZTM0IiwidXNlcl9pZCI6MX0.VLoQsBMgdTFnN_I-iWpPgbCpSWKyV4tw_sFsnvQeyMA';

  getdados() async {
    token = await LocalStorageSessoin().getToken();
  }

  DioApp() {
    //getdados();
    _dio.options.baseUrl = AppString.baseUrl;
    _dio.options.headers["authorization"] = "Bearer $token";
  }
}

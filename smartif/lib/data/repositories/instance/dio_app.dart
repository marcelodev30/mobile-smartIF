import 'package:dio/dio.dart';
import 'package:smartif/config/app_string.dart';

import 'package:smartif/data/services/token_service.dart';

class DioApp {
  final _dio = Dio();
  Dio get dio => _dio;
  late String token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzMwNzE2NzA3LCJpYXQiOjE3MzA2ODc5MDcsImp0aSI6IjY5Mzc3ODI4MTM5NzRjZjM5ZTIwM2Y3MjVjZmRmOThlIiwidXNlcl9pZCI6MX0.knoslrDkqighr4rN4AaU-Q6ewWbg5uEfsgx3CAvokL4';

  getdados() async {
    token = await LocalStorageSessoin().getToken();
  }

  DioApp() {
    //getdados();
    _dio.options.baseUrl = AppString.baseUrl;
    _dio.options.headers["authorization"] = "Bearer $token";
  }
}

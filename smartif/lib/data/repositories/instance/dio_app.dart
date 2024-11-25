import 'package:dio/dio.dart';
import 'package:smartif/config/app_string.dart';

import 'package:smartif/data/services/token_service.dart';

class DioApp {
  final _dio = Dio();
  Dio get dio => _dio;
  late String token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzMyNjA1MTg4LCJpYXQiOjE3MzI1NzYzODgsImp0aSI6IjMzZWQzMTIzNjhjMzQyZDViYjA4ZTliZTExOTdkNWJjIiwidXNlcl9pZCI6MX0.AaZDFbbUTEvcyCfA5gKgF73Y7mwmxjnUFAC6xbJW2OI';

  getdados() async {
    token = await LocalStorageSessoin().getToken();
  }

  DioApp() {
    //getdados();
    _dio.options.baseUrl = AppString.baseUrl;
    _dio.options.headers["authorization"] = "Bearer $token";
  }
}

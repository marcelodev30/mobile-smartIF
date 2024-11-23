import 'package:dio/dio.dart';
import 'package:smartif/config/app_string.dart';

import 'package:smartif/data/services/token_service.dart';

class DioApp {
  final _dio = Dio();
  Dio get dio => _dio;
  late String token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzMxNDA4MTQ5LCJpYXQiOjE3MzEzNzkzNDksImp0aSI6IjFjMjBkYTBjNWY1MjQ2NDk4Y2E0NmJhNGYzNDRkYzBmIiwidXNlcl9pZCI6MX0.z8kABCvqrLYu8ROcomKHFtdBNXeEGmqv3j00y6MFJbM';

  getdados() async {
    token = await LocalStorageSessoin().getToken();
  }

  DioApp() {
    //getdados();
    _dio.options.baseUrl = AppString.baseUrl;
    _dio.options.headers["authorization"] = "Bearer $token";
  }
}

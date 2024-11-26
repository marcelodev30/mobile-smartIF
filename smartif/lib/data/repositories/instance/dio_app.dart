import 'package:dio/dio.dart';
import 'package:smartif/config/app_string.dart';

import 'package:smartif/data/services/token_service.dart';

class DioApp {
  final _dio = Dio();
  Dio get dio => _dio;
  late String token =
<<<<<<< HEAD
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzMyNjA1MTg4LCJpYXQiOjE3MzI1NzYzODgsImp0aSI6IjMzZWQzMTIzNjhjMzQyZDViYjA4ZTliZTExOTdkNWJjIiwidXNlcl9pZCI6MX0.AaZDFbbUTEvcyCfA5gKgF73Y7mwmxjnUFAC6xbJW2OI';
=======
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzMyNTM2NzcwLCJpYXQiOjE3MzI1MDc5NzAsImp0aSI6ImNhOWUyMzI3OGEzYzQ3ZTVhYTFhYTI0MDI5NDA4MDdhIiwidXNlcl9pZCI6MX0.k0GsjBfC2h4svG37bagYAJxL4Dp795PwQhcQpwov9lI';
>>>>>>> fd1dff1e149e842b8242d6e0691743e6f8375a48

  getdados() async {
    token = await LocalStorageSessoin().getToken();
  }

  DioApp() {
    //getdados();
    _dio.options.baseUrl = AppString.baseUrl;
    //_dio.options.headers["authorization"] = "Bearer $token";
  }
}

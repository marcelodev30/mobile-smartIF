import 'package:dio/dio.dart';
import 'package:smartif/config/app_string.dart';

import 'package:smartif/data/services/token_service.dart';

class DioApp {
  final _dio = Dio();
  Dio get dio => _dio;
  late String token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzMyNTM2NzcwLCJpYXQiOjE3MzI1MDc5NzAsImp0aSI6ImNhOWUyMzI3OGEzYzQ3ZTVhYTFhYTI0MDI5NDA4MDdhIiwidXNlcl9pZCI6MX0.k0GsjBfC2h4svG37bagYAJxL4Dp795PwQhcQpwov9lI';

  getdados() async {
    token = await LocalStorageSessoin().getToken();
  }

  DioApp() {
    //getdados();
    _dio.options.baseUrl = AppString.baseUrl;
    //_dio.options.headers["authorization"] = "Bearer $token";
  }
}

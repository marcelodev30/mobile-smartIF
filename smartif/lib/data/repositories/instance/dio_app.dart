import 'package:dio/dio.dart';
import 'package:smartif/config/app_string.dart';

import 'package:smartif/data/services/token_service.dart';

class DioApp {
  final _dio = Dio();
  Dio get dio => _dio;
  late String token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzMwNjk1ODU2LCJpYXQiOjE3MzA2NjcwNTYsImp0aSI6ImRkYzRjY2Q1MWJmNTQ3ZjE4MjkwNTNhMTk0MDc4YmQ3IiwidXNlcl9pZCI6MX0.nq0MwAuTAkdtc4AtclkG3zIIDVptMb-vLEgT-WfkhFs';

  getdados() async {
    token = await LocalStorageSessoin().getToken();
  }

  DioApp() {
    //getdados();
    _dio.options.baseUrl = AppString.baseUrl;
    _dio.options.headers["authorization"] = "Bearer $token";
  }
}

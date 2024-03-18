import 'package:finalprojectsanber/config/base_url.dart';
import 'package:dio/dio.dart';

class DioHttp {
  // this is standarized request for Everyone
  static Map<String, dynamic> headers ={
    "Accept": "application/json",
    "Content-Type": 'application/json',
  };

  static Dio request = Dio(
    BaseOptions(
      // validateStatus: (status) => status! <= 500,
      baseUrl: baseUrl,
      headers: headers,
    ),
  );
}
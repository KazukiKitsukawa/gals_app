import 'package:dio/dio.dart';
import 'package:gals_app/api/model/gals_dio_item.dart';

class GalsHttpDio {
  static Dio create({required String url}) {
    final dio = Dio();
    dio.options.baseUrl = url;
    dio.options.connectTimeout = GalsDioItem().connectTime;
    dio.options.receiveTimeout = GalsDioItem().receiveTime;
    dio.options.contentType = 'application/json';
    dio.options.responseType = ResponseType.json;
    dio.interceptors.add(LogInterceptor());
    return dio;
  }
}

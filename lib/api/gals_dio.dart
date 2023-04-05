import 'package:dio/dio.dart';
import 'package:gals_app/api/model/gals_dio_item.dart';

class GalsDio {
  static Dio create() {
    final dio = Dio();
    dio.options.baseUrl = GalsDioItem().baseUrl;
    dio.options.connectTimeout = GalsDioItem().connectTime;
    dio.options.receiveTimeout = GalsDioItem().receiveTime;
    dio.options.headers = {'content-type': 'text/html;charset=UTF-8'};
    dio.interceptors.add(LogInterceptor());
    return dio;
  }
}

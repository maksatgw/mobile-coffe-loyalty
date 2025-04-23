import 'package:dio/dio.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;

  late Dio dio;

  DioClient._internal() {
    dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {'Content-Type': 'application/json'},
      ),
    );

    // Opsiyonel: response logging veya error interceptor
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  }

  final String _baseUrl = 'https://10.0.2.2::5070/api';

  Dio get client => dio;
}

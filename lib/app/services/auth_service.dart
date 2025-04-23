import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mobile_coffee_loyalty/app/models/auth_repsonse_model.dart';
import 'package:mobile_coffee_loyalty/core/helpers/dio_client.dart';

class AuthService {
  final _dio = DioClient().client;
  final _storage = const FlutterSecureStorage();

  Future<AuthResponseModel?> login(String username, String password) async {
    try {
      final response = await _dio.post(
        '/auth/login',
        data: {'username': username, 'password': password},
      );

      final data = AuthResponseModel.fromJson(response.data);
      await _storage.write(key: 'token', value: data.token);
      return data;
    } catch (e) {
      throw Exception("Giriş sırasında bir hata oluştu");
    }
  }

  Future<String?> getToken() async => await _storage.read(key: 'token');
  Future<void> logout() async => await _storage.delete(key: 'token');
}

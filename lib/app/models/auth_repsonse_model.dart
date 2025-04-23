class AuthResponseModel {
  final String token;
  final String role;
  final String? customerId;

  AuthResponseModel({required this.token, required this.role, this.customerId});

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) {
    return AuthResponseModel(
      token: json['token'],
      role: json['role'],
      customerId: json['customerId'],
    );
  }
}

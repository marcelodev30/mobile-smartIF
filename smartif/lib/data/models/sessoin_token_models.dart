import 'dart:convert';

class SessionTokenLogin {
  late String accessToken;
  late String rereshToken;

  SessionTokenLogin({required this.accessToken, required this.rereshToken});

  SessionTokenLogin.fromJson(Map<String, dynamic> json) {
    accessToken = json['access'];
    rereshToken = json['refresh'];
  }

  Map<String, dynamic> toJson() => {
        'access': accessToken,
        'refresh': rereshToken,
      };
  @override
  String toString() => json.encode(toJson());
}

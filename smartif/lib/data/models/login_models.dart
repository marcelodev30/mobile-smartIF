class LoginModels {
  late String login;
  late String senha;
  LoginModels({required this.login, required this.senha});

  LoginModels.fromJson(Map<String, dynamic> json) {
    login = json['username'];
    senha = json['password'];
  }

  Map<String, dynamic> toJson() => {'username': login, 'password': senha};
}

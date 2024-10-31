class LoginModels {
  late String _login;
  late String _senha;

  LoginModels({required String login, required String senha})
      : _senha = senha,
        _login = login;

  String get getLogin => _login;
  String get getSenha => _senha;
  void setLogin(String value) => _login = value;
  void setSenha(String value) => _senha = value;

  LoginModels.fromJson(Map<String, dynamic> json) {
    _login = json['username'];
    _senha = json['password'];
  }
  Map<String, dynamic> toJson() => {'username': _login, 'password': _senha};
}

class DispositivoComando {
  late int _id;
  late String _comando;

  DispositivoComando({required int id, required String comando})
      : _id = id,
        _comando = comando;

  get getId => _id;
  get getComando => _comando;
  void setComando(String value) => _comando = value;

  DispositivoComando.fromjson(Map<String, dynamic> json) {
    _id = json['id'];
    _comando = json['Comando'];
  }

  Map<String, dynamic> get toJson => {'id': _id, 'Comando': _comando};
}

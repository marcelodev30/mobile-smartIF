class DispositivoComando {
  late String _id;
  late String _comando;

  DispositivoComando({required String id, required String comando})
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

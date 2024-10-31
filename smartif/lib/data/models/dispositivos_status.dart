class DispositivoStatus {
  late String _id;
  late bool _status;

  DispositivoStatus({required String id, required bool status})
      : _id = id,
        _status = status;

  String get getId => _id;
  bool get getStatus => _status;

  DispositivoStatus.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _status = json['status'];
  }
}

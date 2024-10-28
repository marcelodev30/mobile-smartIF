import 'package:smartif/interface/locastorage_interface.dart';

class SessoinStorage extends LocalStorage {
  @override
  Future<void> add(dynamic data) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<void> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<String> fetch() async {
    return 'ss';
  }

  @override
  Future<void> update() {
    // TODO: implement update
    throw UnimplementedError();
  }
}

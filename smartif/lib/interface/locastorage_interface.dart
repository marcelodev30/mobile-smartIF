abstract class LocalStorage {
  Future<void> add(dynamic data);
  Future<String> fetch();
  Future<void> delete();
  Future<void> update();
}

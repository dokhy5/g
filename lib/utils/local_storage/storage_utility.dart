import 'package:get_storage/get_storage.dart';

class GLocalStorage {
  static final GLocalStorage _instance = GLocalStorage._internal();
  factory GLocalStorage() {
    return _instance;
  }
  GLocalStorage._internal();
  final _storage = GetStorage();

  Future<void> saveData<G>(String key, G value) async {
    await _storage.write(key, value);
  }
  G? readData<G>(String key) {
    return _storage.read<G>(key);
  }
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
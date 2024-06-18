abstract class SharedPrefStorage {
  String getString(String key);

  bool? getBool(String key);

  Future<bool> setBool(String key, bool value);

  Future<bool> setString(String key, String value);

  Future<bool> remove(String key);

  Future<void> clear();
}

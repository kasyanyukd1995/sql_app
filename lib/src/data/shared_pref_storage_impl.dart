import 'package:sql_app/src/domain/shared_pref_storage/shared_pref_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefStorageImpl implements SharedPrefStorage {
  final SharedPreferences _sharedPreferences;

  SharedPrefStorageImpl(this._sharedPreferences);

  @override
  String getString(String key) {
    return _sharedPreferences.getString(key) ?? '';
  }

  @override
  bool? getBool(String key) {
    return _sharedPreferences.getBool(key);
  }

  @override
  Future<bool> setBool(String key, bool value) {
    return _sharedPreferences.setBool(key, value);
  }

  @override
  Future<bool> setString(String key, String value) {
    return _sharedPreferences.setString(key, value);
  }

  @override
  Future<bool> remove(String key) {
    return _sharedPreferences.remove(key);
  }

  @override
  Future<void> clear() {
    return _sharedPreferences.clear();
  }
}

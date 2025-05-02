import 'package:shared_preferences/shared_preferences.dart';

class CacheService {
  final SharedPreferencesWithCache _preferences;

  CacheService(this._preferences);

  Future<bool?> getBoolValue(String key) async {
    return _preferences.getBool(key);
  }

  Future<void> setBoolValue(String key, bool value) async {
    await _preferences.setBool(key, value);
  }

}
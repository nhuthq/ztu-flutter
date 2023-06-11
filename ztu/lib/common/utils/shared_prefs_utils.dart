import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsUtils {
  final SharedPreferences sharedPreferences;

  SharedPrefsUtils({required this.sharedPreferences});

  Future<void> setInt({required String key, required int value}) async {
    await sharedPreferences.setInt(key, value);
  }

  Future<int?> getInt({required String key}) async {
    return sharedPreferences.getInt(key);
  }

  Future<void> setDouble({required String key, required double value}) async {
    await sharedPreferences.setDouble(key, value);
  }

  Future<double?> getDouble({required String key}) async {
    return sharedPreferences.getDouble(key);
  }

  Future<void> setString({required String key, required String value}) async {
    await sharedPreferences.setString(key, value);
  }

  Future<String?> getString({required String key}) async {
    return sharedPreferences.getString(key);
  }

  Future<void> setBool({required String key, required bool value}) async {
    await sharedPreferences.setBool(key, value);
  }

  Future<bool?> getBool({required String key}) async {
    return sharedPreferences.getBool(key);
  }

  Future<void> setStringList(
      {required String key, required List<String> value}) async {
    await sharedPreferences.setStringList(key, value);
  }

  Future<List<String>?> getStringList({required String key}) async {
    return sharedPreferences.getStringList(key);
  }

  Future<void> setMap(
      {required String key, required Map<String, dynamic> value}) async {
    await sharedPreferences.setString(key, value.toString());
  }

  Future<Map<String, dynamic>?> getMap({required String key}) async {
    final data = sharedPreferences.getStringList(key);
    if (data?.isNotEmpty ?? false) {
      return (data as Map<String, dynamic>);
    } else {
      return null;
    }
  }

  /// Saves language code [languageCode] to persistent storage in the background.
  Future<void> setCurrentLanguageCode({required String languageCode}) async {
    await sharedPreferences.setString('current_language_code', languageCode);
  }

  Future<String?> getCurrentLanguageCode() async {
    return sharedPreferences.getString('current_language_code');
  }
}

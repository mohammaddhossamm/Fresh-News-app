import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  static SharedPreferences? sharedPrefs;
  static init() async {
    sharedPrefs = await SharedPreferences.getInstance();
  }

  static Future<bool> saveSettings({
    required String key,
    required dynamic value,
  }) async {
    if (value is bool) {
      return await sharedPrefs!.setBool(key, value);
    } else {
      return await sharedPrefs!.setString(key, value);
    }
  }

  static String isArabic({required String key}) {
    return sharedPrefs!.getString(key) ?? 'en';
  }

  static bool isDark({required String key}) {
    return sharedPrefs!.getBool(key) ?? false;
  }

  static bool isOnBordingFinished({required String key}) {
    return sharedPrefs!.getBool(key) ?? false;
  }
}

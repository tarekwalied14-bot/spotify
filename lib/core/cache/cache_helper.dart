import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  final SharedPreferences sharedPreferences;

  CacheHelper({required this.sharedPreferences});

  Future<void> saveTheme(String theme) async {
    await sharedPreferences.setString('theme', theme);
  }

  String? getTheme() {
    return sharedPreferences.getString('theme');
  }
}

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton()
class SharedPreferenceHandler {
  static const String _KEY_TOKEN = 'token';

  final SharedPreferences _sharedPreferences;

  SharedPreferenceHandler(this._sharedPreferences);

  void saveToken(String token) async {
    await _sharedPreferences.setString(_KEY_TOKEN, token);
  }

  Future<String> getToken() async {
    return _sharedPreferences.getString(_KEY_TOKEN);
  }
}

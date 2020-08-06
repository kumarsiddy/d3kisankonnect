import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class HiveDataStorageHandler {
  static const String KEY_TOKEN = 'token';
  static const String KEY_LOCALE = 'locale';

  final LazyBox<dynamic> _userStatusBox;

  HiveDataStorageHandler(this._userStatusBox);

  Future<void> saveToken(String token) async {
    return _userStatusBox.put(KEY_TOKEN, token);
  }

  Future<String> getToken() async {
    var token = await _userStatusBox.get(KEY_TOKEN);
    return cast<String>(token);
  }

  Future<String> getLocaleKey() async {
    var localeString = await _userStatusBox.get(KEY_LOCALE);
    return cast<String>(localeString);
  }

  Future<void> saveLocaleKey(String localeKey) async {
    return _userStatusBox.put(KEY_LOCALE, localeKey);
  }
}

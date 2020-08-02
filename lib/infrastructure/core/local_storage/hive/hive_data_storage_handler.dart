import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class HiveDataStorageHandler {
  static const String KEY_TOKEN = 'token';

  final LazyBox _userStatusBox;

  HiveDataStorageHandler(this._userStatusBox);

  Future<void> saveToken(String token) async {
    return _userStatusBox.put(KEY_TOKEN, token);
  }

  Future<String> getToken() {
    return _userStatusBox.get(KEY_TOKEN);
  }
}

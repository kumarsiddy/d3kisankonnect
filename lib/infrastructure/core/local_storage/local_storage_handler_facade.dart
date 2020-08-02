import 'package:d3kisankonnect/infrastructure/core/local_storage/hive/hive_data_storage_handler.dart';
import 'package:d3kisankonnect/infrastructure/core/local_storage/i_local_storage_facade.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ILocalStorageFacade)
class LocalStorageHandlerFacade implements ILocalStorageFacade {
  final HiveDataStorageHandler _hiveDataStorageHandler;

  LocalStorageHandlerFacade(this._hiveDataStorageHandler);

  @override
  Future<String> getToken() async {
    return _hiveDataStorageHandler.getToken();
  }

  @override
  Future<void> saveToken(String token) async {
    return _hiveDataStorageHandler.saveToken(token);
  }

  @override
  Future<bool> deleteCache() async {}
}

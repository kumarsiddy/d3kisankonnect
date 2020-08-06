import 'package:d3kisankonnect/infrastructure/core/local_storage/hive/hive_data_storage_handler.dart';
import 'package:d3kisankonnect/infrastructure/core/local_storage/i_local_storage_facade.dart';
import 'package:d3kisankonnect/lang/app_localizations.dart';
import 'package:d3kisankonnect/logger.dart';
import 'package:flutter/material.dart';
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

  @override
  Future<Locale> getLocale() async {
    String localeKey = await _hiveDataStorageHandler.getLocaleKey();
    if (localeKey == null) {
      return AppLocalizations.getDefaultLocale();
    }
    return AppLocalizations.getLocaleOf(localeKey);
  }

  @override
  Future<void> saveLocale(Locale locale) async {
    var localeOption = AppLocalizations.getKeyFromLocale(locale);
    localeOption.fold(
      () => new Exception('locale not found'),
      (localeKey) => _hiveDataStorageHandler.saveLocaleKey(localeKey),
    );
  }
}

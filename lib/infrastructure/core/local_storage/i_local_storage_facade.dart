import 'package:flutter/material.dart';

abstract class ILocalStorageFacade {
  Future<String> getToken();

  Future<void> saveToken(String token);

  Future<bool> deleteCache();

  Future<Map<String, String>> getDefaultTranslation(Locale locale);
}

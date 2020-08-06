import 'package:flutter/material.dart';

abstract class ILocalStorageFacade {
  Future<String> getToken();

  Future<void> saveToken(String token);

  Future<bool> deleteCache();


  Future<void> saveLocale(Locale locale);

  Future<Locale> getLocale();
}

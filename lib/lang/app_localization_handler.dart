import 'package:d3kisankonnect/di/injection.dart';
import 'package:d3kisankonnect/lang/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';

class _AppLocalizationHandler {
  var _localeSubject = PublishSubject<Locale>();

  Stream<Locale> get localeStream => _localeSubject.stream;

  setLocale(Locale newLocale) {
    _localeSubject.sink.add(newLocale);
  }

  dispose() {
    _localeSubject.close();
  }
}

String getString(BuildContext context, String key) {
  assert(key != null);

  // AppLocalizations appLocalizations =
  //     getIt.get(instanceName: 'getAppLocalizations', param1: context);
  // return appLocalizations.translate(key);
  return 'sid';
}

// This is to maintain single object throughout the app lifecycle.
final _appLocalizationHandler = _AppLocalizationHandler();
_AppLocalizationHandler get localeHandler {
  if (_appLocalizationHandler._localeSubject.isClosed) {
    _appLocalizationHandler._localeSubject = PublishSubject<Locale>();
  }
  return _appLocalizationHandler;
}

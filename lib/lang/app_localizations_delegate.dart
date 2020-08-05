import 'package:d3kisankonnect/lang/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  final AppLocalizations appLocalizations;

  const AppLocalizationsDelegate(this.appLocalizations);

  // This delegate instance will never change (it doesn't even have fields!)
  // It can provide a constant constructor.

  @override
  bool isSupported(Locale locale) {
    return AppLocalizations.supportedLanguageMap.containsValue(locale);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    await appLocalizations.load(locale);
    return appLocalizations;
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => true;
}

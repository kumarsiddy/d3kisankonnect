import 'dart:convert';

import 'package:d3kisankonnect/di/injection.dart';
import 'package:d3kisankonnect/lang/app_localizations_delegate.dart';
import 'package:d3kisankonnect/presentation/core/language/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppLocalizations {
  static const supportedLanguageMap = <String, Locale>{
    AppStrings.english: Locale('en', 'US'),
    AppStrings.hindi: Locale('hi', 'IN'),
  };

  static Locale getLocaleOf(String key) {
    return supportedLanguageMap[key];
  }

  static List<Locale> getSupportedLanguages() {
    var supporedLanguages = <Locale>[];

    supportedLanguageMap
        .forEach((key, locale) => supporedLanguages.add(locale));

    return supporedLanguages;
  }

  static Iterable<LocalizationsDelegate> getLocalizationDelegates() {
    return [
      getIt<AppLocalizationsDelegate>(),
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ];
  }

  static Locale getResolutionCallback(
      Locale locale, Iterable<Locale> supportedLocales) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode &&
          supportedLocale.countryCode == locale.countryCode) {
        return supportedLocale;
      }
    }
    return supportedLocales.first;
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  Map<String, String> _localizedStrings;

  Future<bool> load(Locale locale) async {
    String jsonString =
        await rootBundle.loadString('lang/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });

    return true;
  }

  String translate(String key) => _localizedStrings[key];
}

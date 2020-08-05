import 'dart:convert';

import 'package:d3kisankonnect/lang/localizations_delegate.dart';
import 'package:d3kisankonnect/presentation/core/language/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppLocalizations {
  static const supportedLanguageMap = <String, Locale>{
    AppStrings.english: Locale('en', 'US'),
    AppStrings.hindi: Locale('hi', 'IN'),
  };

  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizationsDelegate();

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
      AppLocalizations.delegate,
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
    // If the locale of the device is not supported, use the first one
    // from the list (English, in this case).
    return supportedLocales.first;
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  final Locale locale;

  AppLocalizations(this.locale);

  Map<String, String> _localizedStrings;

  Future<bool> load() async {
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

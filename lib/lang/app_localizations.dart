import 'dart:convert';

import 'package:d3kisankonnect/lang/localizations_delegate.dart';
import 'package:d3kisankonnect/presentation/core/language/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  static const supportedLanguageMap = <String, Locale>{
    AppStrings.english: Locale('en', 'US'),
    AppStrings.hindi: Locale('hi', 'IN'),
  };

  final Locale locale;

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

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

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

import 'package:d3kisankonnect/di/injection.dart';
import 'package:d3kisankonnect/domain/onboarding/i_auth_facade.dart';
import 'package:d3kisankonnect/lang/app_localizations_delegate.dart';
import 'package:d3kisankonnect/presentation/core/language/app_strings.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppLocalizations {
  static const String ENGLISH = 'english';
  static const String HINDI = 'hindi';

  static const supportedLanguageMap = <String, Locale>{
    ENGLISH: Locale('en', 'US'),
    HINDI: Locale('hi', 'IN'),
  };

  static Locale getLocaleOf(String key) {
    return supportedLanguageMap[key];
  }

  static Option<String> getKeyFromLocale(Locale locale) {
    supportedLanguageMap.forEach((key, value) {
      if (locale == value) {
        return key;
      }
      return None();
    });
    return None();
  }

  static Locale getDefaultLocale() {
    return supportedLanguageMap[AppStrings.english];
  }

  static List<Locale> getSupportedLanguages() {
    var supportedLanguages = <Locale>[];

    supportedLanguageMap
        .forEach((key, locale) => supportedLanguages.add(locale));

    return supportedLanguages;
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
    return getDefaultLocale();
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  IAuthFacade authFacade;

  AppLocalizations(this.authFacade);

  Map<String, String> _localizedStrings;

  Future<bool> load(Locale locale) async {
    _localizedStrings = await authFacade.getLocaleJsonString(locale);

    return true;
  }

  String translate(String key) => _localizedStrings[key];
}

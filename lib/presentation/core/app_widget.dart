import 'package:d3kisankonnect/application/onboarding/splash/splash_bloc.dart';
import 'package:d3kisankonnect/lang/app_localizations.dart';
import 'package:d3kisankonnect/lang/localization_handler.dart';
import 'package:d3kisankonnect/presentation/core/customview/colors.dart';
import 'package:d3kisankonnect/di/injection.dart';
import 'package:d3kisankonnect/presentation/core/language/app_strings.dart';
import 'package:d3kisankonnect/presentation/routes/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<SplashBloc>()..add(const SplashEvent.authCheckRequested()),
        )
      ],
      child: StreamBuilder<Locale>(
          stream: localeHandler.localeStream,
          initialData: AppLocalizations.getLocaleOf(AppStrings.english),
          builder: (context, snapshot) {
            return MaterialApp(
              title: 'Sample App',
              theme: _getAppTheme(context),
              onGenerateRoute: RouteHandler.generateRoute,
              initialRoute: RouteID.LANGUAGE.name,
              locale: snapshot.data,
              supportedLocales: AppLocalizations.getSupportedLanguages(),
              localizationsDelegates: [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              localeResolutionCallback: _getResolutionCallback,
            );
          }),
    );
  }

  Locale _getResolutionCallback(
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
}

_getAppTheme(BuildContext context) {
  return ThemeData(
    primaryColor: AppColor.PRIMARY.color,
    primaryColorDark: AppColor.PRIMARY_DARK.color,
    accentColor: AppColor.ACCENT.color,
    primaryIconTheme:
        Theme.of(context).accentIconTheme.copyWith(color: AppColor.WHITE.color),
    accentIconTheme:
        Theme.of(context).accentIconTheme.copyWith(color: AppColor.WHITE.color),
    primaryTextTheme: TextTheme(headline6: TextStyle(color: Colors.white)),
  );
}

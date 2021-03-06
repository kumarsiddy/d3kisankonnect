import 'package:d3kisankonnect/application/onboarding/splash/splash_bloc.dart';
import 'package:d3kisankonnect/lang/app_localizations.dart';
import 'package:d3kisankonnect/lang/app_localization_handler.dart';
import 'package:d3kisankonnect/presentation/core/customview/colors.dart';
import 'package:d3kisankonnect/di/injection.dart';
import 'package:d3kisankonnect/presentation/routes/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            SplashBloc splashBloc = getIt<SplashBloc>();
            splashBloc.add(const SplashEvent.authCheckRequested());
            splashBloc.add(const SplashEvent.getSavedLanguageRequested());
            return splashBloc;
          },
        )
      ],
      child: StreamBuilder<Locale>(
          stream: appLocaleHandler.localeStream,
          builder: (context, snapshot) {
            return MaterialApp(
              title: 'Sample App',
              theme: _getAppTheme(context),
              onGenerateRoute: RouteHandler.generateRoute,
              locale: snapshot.data,
              supportedLocales: AppLocalizations.getSupportedLanguages(),
              localizationsDelegates:
                  AppLocalizations.getLocalizationDelegates(),
              localeResolutionCallback: AppLocalizations.getResolutionCallback,
              home: BlocListener<SplashBloc, SplashState>(
                listener: _handleState,
                child: _SplashPageForm(),
              ),
            );
          }),
    );
  }

  void _handleState(BuildContext context, SplashState state) {
    state.map(initial: (_) {
      print('initial');
    }, authenticated: (_) {
      print('authenticated');
      RouteHandler.navigateToOnly(context, routeID: RouteID.LANGUAGE);
    }, unaunthenticated: (_) {
      print('unauthenticated');
      RouteHandler.navigateToOnly(context, routeID: RouteID.LANGUAGE);
    });
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

class _SplashPageForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.PRIMARY.color,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: new BoxDecoration(
                    color: AppColor.WHITE.color,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.WHITE.color.withOpacity(0.2),
                        spreadRadius: 8,
                        blurRadius: 8,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'KK',
                        style: TextStyle(
                          color: AppColor.PRIMARY.color,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        bottom: 32, top: 16, left: 16, right: 16),
                    child: RichText(
                      text: TextSpan(
                        text: 'Welcome To',
                        style: TextStyle(
                          color: AppColor.WHITE.color,
                          fontSize: 32,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\nSample App',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CircularProgressIndicator(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

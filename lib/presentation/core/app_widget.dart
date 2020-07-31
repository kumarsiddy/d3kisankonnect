import 'package:auto_route/auto_route.dart';
import 'package:d3kisankonnect/application/onboarding/splash/splash_bloc.dart';
import 'package:d3kisankonnect/presentation/core/colors.dart';
import 'package:d3kisankonnect/presentation/injection.dart';
import 'package:d3kisankonnect/presentation/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      child: MaterialApp(
        title: 'Flutter Demo',
        builder: ExtendedNavigator.builder<Router>(router: Router()),
        theme: _getAppTheme(context),
      ),
    );
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

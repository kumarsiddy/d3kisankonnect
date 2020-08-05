import 'package:d3kisankonnect/presentation/core/language/language_page.dart';
import 'package:d3kisankonnect/presentation/onboarding/home/home_page.dart';
import 'package:d3kisankonnect/presentation/onboarding/sign_in/sign_in_page.dart';
import 'package:d3kisankonnect/presentation/onboarding/sign_up/sign_up_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RouteHandler {
  static navigateTo(
    BuildContext context, {
    @required RouteID routeID,
    Map<String, Object> args,
  }) {
    Navigator.pushNamed(
      context,
      routeID.name,
      arguments: args,
    );
  }

  static replaceWith(
    BuildContext context, {
    @required RouteID routeID,
    Map<String, Object> args,
  }) {
    Navigator.pushReplacementNamed(
      context,
      routeID.name,
      arguments: args,
    );
  }

//This will remove all the previous screens
  static navigateToOnly(
    BuildContext context, {
    @required RouteID routeID,
    Map<String, Object> args,
  }) {
    Navigator.pushNamedAndRemoveUntil(
        context, routeID.name, (Route<dynamic> route) => false,
        arguments: args);
  }

  static navigateToNoInternetPage(BuildContext context) {
    navigateTo(context, routeID: RouteID.NO_INTERNET);
  }

  static pop(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    } else {
      SystemNavigator.pop();
    }
  }

  static Route generateRoute(RouteSettings routeSettings) {
    final routeID = parseRouteFrom(routeSettings.name) ?? RouteID.NO_ROUTE;
    switch (routeID) {
      case RouteID.LANGUAGE:
        return _buildRoute(routeSettings, LanguagePage());
      case RouteID.SIGN_IN:
        return _buildRoute(routeSettings, SignInPage());
      case RouteID.SIGN_UP:
        return _buildRoute(routeSettings, SignUpPage());
      case RouteID.HOME_PAGE:
        return _buildRoute(routeSettings, HomePage());
      case RouteID.NO_INTERNET:
        return _buildRoute(routeSettings, null, noAnimation: true);
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
                child: Text('No route defined for ${routeSettings.name}')),
          ),
        );
    }
  }

  static MaterialPageRoute _buildRoute(
    RouteSettings settings,
    Widget screen, {
    bool noAnimation: false,
  }) {
    if (noAnimation) {
      return _NoAnimationMaterialPageRoute(
        settings: settings,
        builder: (_) => screen,
      );
    }
    return new MaterialPageRoute(
      settings: settings,
      builder: (_) => screen,
    );
  }
}

enum RouteID {
  LANGUAGE,
  SIGN_IN,
  SIGN_UP,
  HOME_PAGE,
  NO_INTERNET,
  NO_ROUTE,
}

extension RouteIDX on RouteID {
  String get name => this.toString().split('.').last;
}

RouteID parseRouteFrom(String routeString) {
  return RouteID.values.firstWhere((e) => e.name == routeString);
}

class _NoAnimationMaterialPageRoute<T> extends MaterialPageRoute<T> {
  _NoAnimationMaterialPageRoute({
    @required WidgetBuilder builder,
    RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
            builder: builder,
            maintainState: maintainState,
            settings: settings,
            fullscreenDialog: fullscreenDialog);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
}

import 'package:auto_route/auto_route_annotations.dart';
import 'package:d3kisankonnect/presentation/onboarding/sign_in/sign_in_page.dart';
import 'package:d3kisankonnect/presentation/onboarding/sign_up/sign_up_page.dart';
import 'package:d3kisankonnect/presentation/onboarding/splash/splash.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true, routes: [
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: SignInPage),
  MaterialRoute(page: SignUpPage),
])
class $Router {
  SplashPage splashPage;
}

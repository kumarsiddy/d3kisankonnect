// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../infrastructure/onboarding/auth_facade.dart';
import '../domain/onboarding/i_auth_facade.dart';
import '../infrastructure/core/injection_register_module.dart';
import '../infrastructure/core/local_storage/shared_preference_handler.dart';
import '../application/onboarding/splash/splash_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final gh = GetItHelper(g, environment);
  final registerModule = _$RegisterModule();
  gh.factory<SplashBloc>(() => SplashBloc(g<IAuthFacade>()));

  // Eager singletons must be registered in the right order
  final sharedPreferences = await registerModule.prefs;
  gh.singleton<SharedPreferences>(sharedPreferences);
  gh.singleton<SharedPreferenceHandler>(
      SharedPreferenceHandler(g<SharedPreferences>()));
  gh.singleton<IAuthFacade>(AuthFacade(g<SharedPreferenceHandler>()));
}

class _$RegisterModule extends RegisterModule {}

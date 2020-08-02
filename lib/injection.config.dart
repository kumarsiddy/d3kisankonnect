// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';
import 'package:hive/hive.dart';

import 'infrastructure/onboarding/onboarding_facade.dart';
import 'infrastructure/core/local_storage/hive/hive_data_storage_handler.dart';
import 'domain/onboarding/i_auth_facade.dart';
import 'infrastructure/core/local_storage/i_local_storage_facade.dart';
import 'infrastructure/core/local_storage/local_storage_handler_facade.dart';
import 'infrastructure/core/injection_register_module.dart';
import 'infrastructure/core/api_service/retrofit_api_client.dart';
import 'application/onboarding/sign_in/sign_in_bloc.dart';
import 'application/onboarding/sign_up/sign_up_bloc.dart';
import 'application/onboarding/splash/splash_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final gh = GetItHelper(g, environment);
  final registerModule = _$RegisterModule();
  final lazyBox = await registerModule.userStatusBox;
  gh.factory<LazyBox<dynamic>>(() => lazyBox);
  gh.factory<SignInBloc>(() => SignInBloc(g<IAuthFacade>()));
  gh.factory<SignUpBloc>(() => SignUpBloc(g<IAuthFacade>()));
  gh.factory<SplashBloc>(() => SplashBloc(g<IAuthFacade>()));

  // Eager singletons must be registered in the right order
  gh.singleton<Dio>(registerModule.dio);
  gh.singleton<RetrofitApiClient>(registerModule.retrofitClient);
  gh.singleton<HiveDataStorageHandler>(
      HiveDataStorageHandler(g<LazyBox<dynamic>>()));
  gh.singleton<ILocalStorageFacade>(
      LocalStorageHandlerFacade(g<HiveDataStorageHandler>()));
  gh.singleton<IAuthFacade>(
      AuthFacade(g<RetrofitApiClient>(), g<ILocalStorageFacade>()));
}

class _$RegisterModule extends RegisterModule {}

import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:d3kisankonnect/domain/onboarding/auth_failure.dart';
import 'package:d3kisankonnect/domain/onboarding/i_auth_facade.dart';
import 'package:d3kisankonnect/infrastructure/core/api_service/retrofit_api_client.dart';
import 'package:d3kisankonnect/infrastructure/core/local_storage/cache_handler/lang_cache_handler.dart';
import 'package:d3kisankonnect/infrastructure/core/local_storage/i_local_storage_facade.dart';
import 'package:d3kisankonnect/infrastructure/onboarding/dtos/onboarding_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:d3kisankonnect/domain/onboarding/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final RetrofitApiClient _retrofitApiClient;
  final ILocalStorageFacade _localStorageFacade;
  final LanguageCacheHandler _languageCacheHandler;

  AuthFacade(
    this._retrofitApiClient,
    this._localStorageFacade,
    this._languageCacheHandler,
  );

  @override
  Future<bool> isUserSignedIn() async {
    var token = await _localStorageFacade.getToken();
    return token != null;
  }

  @override
  Future<Either<AuthFailure, Unit>> signUp({
    @required Name name,
    @required EmailAddress emailAddress,
    @required Password password,
    @required Mobile mobile,
    @required Gender gender,
  }) async {
    SignUpResponseDto signUpResponseDto =
        await _retrofitApiClient.signUp(SignUpDto(
      name: name.getOrException(),
      email: emailAddress.getOrException(),
      password: password.getOrException(),
      mobile: mobile.getOrException(),
      gender: gender.getOrException(),
    ));

    if (signUpResponseDto != null && signUpResponseDto.token != null) {
      return right(unit);
    }

    return left(AuthFailure.emailAlreadyRegistered());
  }

  @override
  Future<Either<AuthFailure, Unit>> signIn({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    SignInResponseDto signInResponseDto = await _retrofitApiClient.signIn(
      SignInDto(
          username: emailAddress.getOrException(),
          password: password.getOrException()),
    );

    if (signInResponseDto != null && signInResponseDto.token != null) {
      _localStorageFacade.saveToken(signInResponseDto.token);
      return right(unit);
    }
    return left(AuthFailure.invalidEmailPasswordCombinationError());
  }

  @override
  Future<Either<AuthFailure, bool>> signOut() async {
    bool isSuccess = await _localStorageFacade.deleteCache();

    if (isSuccess) {
      return right(true);
    }

    return left(AuthFailure.serverError());
  }

  @override
  Future<Map<String, String>> getLocaleJsonString(Locale locale) async {
    var languageMap = await _languageCacheHandler.readJsonFor(locale: locale);

    if (languageMap.isNone()) {
      var http = await _retrofitApiClient.getLocaleJson(locale.languageCode);
      Map<String, String> translationData = {};

      if (http.response.statusCode == HttpStatus.ok) {
        var data = Map<String, dynamic>.from(http.data);
        data.forEach((key, value) {
          translationData.putIfAbsent(key, () => value.toString());
        });
        await _languageCacheHandler.writeJsonFor(
            locale: locale, toBeWritten: json.encode(data));

        return translationData;
      }
    } else if (languageMap.isSome()) {
      return languageMap.getOrElse(() => {});
    }

// Returning default language json from asset folder if everything fails
    return await _languageCacheHandler.getDefaultLocaleJson();
  }

  @override
  Future<Locale> getSavedLocale() {
    return _localStorageFacade.getLocale();
  }

  @override
  Future<void> saveLocale(Locale locale) async{
    await _localStorageFacade.saveLocale(locale);
  }
}

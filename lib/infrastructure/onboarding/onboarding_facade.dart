import 'dart:ui';

import 'package:d3kisankonnect/domain/onboarding/auth_failure.dart';
import 'package:d3kisankonnect/domain/onboarding/i_auth_facade.dart';
import 'package:d3kisankonnect/infrastructure/core/api_service/retrofit_api_client.dart';
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

  AuthFacade(
    this._retrofitApiClient,
    this._localStorageFacade,
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
  Future<Either<AuthFailure, Map<String, String>>> getLocaleJsonString(
      Locale locale) async {
    var result = await _retrofitApiClient.getLocaleJson(locale.languageCode);

    Map<String, String> translationData = {};

    if (result != null) {
      var data = Map<String, dynamic>.from(result.data);
      data.forEach((key, value) {
        translationData.putIfAbsent(key, () => value.toString());
      });
      return right(translationData);
    }

    return left(AuthFailure.serverError());
  }
}

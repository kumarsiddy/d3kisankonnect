import 'package:d3kisankonnect/domain/onboarding/auth_failure.dart';
import 'package:d3kisankonnect/domain/onboarding/i_auth_facade.dart';
import 'package:d3kisankonnect/infrastructure/core/api_service/retrofit_api_client.dart';
import 'package:d3kisankonnect/infrastructure/core/local_storage/shared_preference_handler.dart';
import 'package:d3kisankonnect/infrastructure/onboarding/dtos/onboarding_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:d3kisankonnect/domain/onboarding/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final RetrofitApiClient _retrofitApiClient;
  final SharedPreferenceHandler _sharedPreferenceHandler;

  AuthFacade(this._retrofitApiClient, this._sharedPreferenceHandler);

  @override
  Future<bool> isUserSignedIn() async {
    return await _sharedPreferenceHandler.getToken() != null;
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required Name name,
    @required EmailAddress emailAddress,
    @required Password password,
    @required Mobile mobile,
  }) async {
    SignUpResponseDto signUpResponseDto =
        await _retrofitApiClient.signUp(SignUpDto(
      name: name.getOrException(),
      email: emailAddress.getOrException(),
      password: password.getOrException(),
      mobile: mobile.getOrException(),
    ));

    if (signUpResponseDto != null && signUpResponseDto.isSuccess) {
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

    if (signInResponseDto != null && signInResponseDto.isSuccess) {
      _sharedPreferenceHandler.saveToken(signInResponseDto.token);
      return right(unit);
    }
    return left(AuthFailure.invalidEmailPasswordCombinationError());
  }

  @override
  Future<Either<AuthFailure, bool>> signOut() async {
    bool isSuccess = await _sharedPreferenceHandler.deleteAll();

    if (isSuccess) {
      return right(true);
    }

    return left(AuthFailure.serverError());
  }
}

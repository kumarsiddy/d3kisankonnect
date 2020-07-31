import 'package:d3kisankonnect/domain/onboarding/auth_failure.dart';
import 'package:d3kisankonnect/domain/onboarding/i_auth_facade.dart';
import 'package:d3kisankonnect/infrastructure/core/local_storage/shared_preference_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:d3kisankonnect/domain/onboarding/value_objects.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final SharedPreferenceHandler _sharedPreferenceHandler;

  AuthFacade(this._sharedPreferenceHandler);

  @override
  Future<bool> isUserSignedIn() async {
    return await _sharedPreferenceHandler.getToken() != null;
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) {
    return null;
  }

  @override
  Future<Either<AuthFailure, Unit>> signIn(
      {EmailAddress emailAddress, Password password}) {
    return null;
  }

  @override
  Future<void> signOut() {
    return null;
  }
}

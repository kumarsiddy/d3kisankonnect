import 'package:d3kisankonnect/domain/onboarding/auth_failure.dart';
import 'package:d3kisankonnect/domain/onboarding/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class IAuthFacade {
  Future<bool> isUserSignedIn();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signIn({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<void> signOut();
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:d3kisankonnect/domain/onboarding/i_auth_facade.dart';
import 'package:d3kisankonnect/domain/onboarding/value_objects.dart';
import 'package:d3kisankonnect/lang/app_localization_handler.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;

  SignInBloc(this._authFacade) : super(SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    yield* event.map(onSignIn: (onSignIn) async* {
      final userOption = await _authFacade.signIn(
        emailAddress: onSignIn.emailAddress,
        password: onSignIn.password,
      );

      yield userOption.fold(
        (l) => const SignInState.unauthenticated(),
        (r) => const SignInState.signedInUsingEmailAndPassword(),
      );
    }, onLanguageChange: (OnLanguageChange value) async* {
      appLocaleHandler.setLocale(value.locale);
      await _authFacade.saveLocale(value.locale);
    });
  }
}

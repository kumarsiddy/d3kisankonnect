import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:d3kisankonnect/domain/onboarding/i_auth_facade.dart';
import 'package:d3kisankonnect/domain/onboarding/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IAuthFacade _authFacade;

  SignUpBloc(this._authFacade) : super(SignUpState.initial());

  @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
  ) async* {
    yield* event.map(onSignUp: (onSignUp) async* {
      final userOption = await _authFacade.signUp(
        name: onSignUp.name,
        emailAddress: onSignUp.emailAddress,
        password: onSignUp.password,
        mobile: onSignUp.mobile,
        gender: onSignUp.gender,
      );

      yield userOption.fold(
        (l) => const SignUpState.unauthenticated(),
        (r) => const SignUpState.signedUp(),
      );
    });
  }
}

part of 'sign_in_bloc.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState.initial() = Initial;
  const factory SignInState.signedInUsingEmailAndPassword() =
      SignedInUsingEmailAndPassword;
  const factory SignInState.unauthenticated() = Unauthenticated;
}

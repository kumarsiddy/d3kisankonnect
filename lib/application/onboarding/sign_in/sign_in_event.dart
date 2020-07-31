part of 'sign_in_bloc.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {
  const factory SignInEvent.onSignIn({
    @required EmailAddress emailAddress,
    @required Password password,
  }) = OnSignIn;
}

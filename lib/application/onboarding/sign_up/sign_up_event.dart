part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.onSignUp({
    @required Name name,
    @required EmailAddress emailAddress,
    @required Password password,
    @required Mobile mobile,
    @required Gender gender,
  }) = OnSignUp;
}

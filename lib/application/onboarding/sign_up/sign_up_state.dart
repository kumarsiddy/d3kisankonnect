part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = Initial;
  const factory SignUpState.signedUp() = SignedUp;
  const factory SignUpState.unauthenticated() = Unauthenticated;
}

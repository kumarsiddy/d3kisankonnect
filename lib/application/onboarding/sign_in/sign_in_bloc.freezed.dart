// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignInEventTearOff {
  const _$SignInEventTearOff();

// ignore: unused_element
  OnSignIn onSignIn(
      {@required EmailAddress emailAddress, @required Password password}) {
    return OnSignIn(
      emailAddress: emailAddress,
      password: password,
    );
  }

// ignore: unused_element
  OnLanguageChange onLanguageChange({@required Locale locale}) {
    return OnLanguageChange(
      locale: locale,
    );
  }
}

// ignore: unused_element
const $SignInEvent = _$SignInEventTearOff();

mixin _$SignInEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onSignIn(EmailAddress emailAddress, Password password),
    @required Result onLanguageChange(Locale locale),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onSignIn(EmailAddress emailAddress, Password password),
    Result onLanguageChange(Locale locale),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onSignIn(OnSignIn value),
    @required Result onLanguageChange(OnLanguageChange value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onSignIn(OnSignIn value),
    Result onLanguageChange(OnLanguageChange value),
    @required Result orElse(),
  });
}

abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

abstract class $OnSignInCopyWith<$Res> {
  factory $OnSignInCopyWith(OnSignIn value, $Res Function(OnSignIn) then) =
      _$OnSignInCopyWithImpl<$Res>;
  $Res call({EmailAddress emailAddress, Password password});
}

class _$OnSignInCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $OnSignInCopyWith<$Res> {
  _$OnSignInCopyWithImpl(OnSignIn _value, $Res Function(OnSignIn) _then)
      : super(_value, (v) => _then(v as OnSignIn));

  @override
  OnSignIn get _value => super._value as OnSignIn;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
  }) {
    return _then(OnSignIn(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
    ));
  }
}

class _$OnSignIn implements OnSignIn {
  const _$OnSignIn({@required this.emailAddress, @required this.password})
      : assert(emailAddress != null),
        assert(password != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;

  @override
  String toString() {
    return 'SignInEvent.onSignIn(emailAddress: $emailAddress, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnSignIn &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password);

  @override
  $OnSignInCopyWith<OnSignIn> get copyWith =>
      _$OnSignInCopyWithImpl<OnSignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onSignIn(EmailAddress emailAddress, Password password),
    @required Result onLanguageChange(Locale locale),
  }) {
    assert(onSignIn != null);
    assert(onLanguageChange != null);
    return onSignIn(emailAddress, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onSignIn(EmailAddress emailAddress, Password password),
    Result onLanguageChange(Locale locale),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onSignIn != null) {
      return onSignIn(emailAddress, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onSignIn(OnSignIn value),
    @required Result onLanguageChange(OnLanguageChange value),
  }) {
    assert(onSignIn != null);
    assert(onLanguageChange != null);
    return onSignIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onSignIn(OnSignIn value),
    Result onLanguageChange(OnLanguageChange value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onSignIn != null) {
      return onSignIn(this);
    }
    return orElse();
  }
}

abstract class OnSignIn implements SignInEvent {
  const factory OnSignIn(
      {@required EmailAddress emailAddress,
      @required Password password}) = _$OnSignIn;

  EmailAddress get emailAddress;
  Password get password;
  $OnSignInCopyWith<OnSignIn> get copyWith;
}

abstract class $OnLanguageChangeCopyWith<$Res> {
  factory $OnLanguageChangeCopyWith(
          OnLanguageChange value, $Res Function(OnLanguageChange) then) =
      _$OnLanguageChangeCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

class _$OnLanguageChangeCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $OnLanguageChangeCopyWith<$Res> {
  _$OnLanguageChangeCopyWithImpl(
      OnLanguageChange _value, $Res Function(OnLanguageChange) _then)
      : super(_value, (v) => _then(v as OnLanguageChange));

  @override
  OnLanguageChange get _value => super._value as OnLanguageChange;

  @override
  $Res call({
    Object locale = freezed,
  }) {
    return _then(OnLanguageChange(
      locale: locale == freezed ? _value.locale : locale as Locale,
    ));
  }
}

class _$OnLanguageChange implements OnLanguageChange {
  const _$OnLanguageChange({@required this.locale}) : assert(locale != null);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'SignInEvent.onLanguageChange(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnLanguageChange &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @override
  $OnLanguageChangeCopyWith<OnLanguageChange> get copyWith =>
      _$OnLanguageChangeCopyWithImpl<OnLanguageChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onSignIn(EmailAddress emailAddress, Password password),
    @required Result onLanguageChange(Locale locale),
  }) {
    assert(onSignIn != null);
    assert(onLanguageChange != null);
    return onLanguageChange(locale);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onSignIn(EmailAddress emailAddress, Password password),
    Result onLanguageChange(Locale locale),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onLanguageChange != null) {
      return onLanguageChange(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onSignIn(OnSignIn value),
    @required Result onLanguageChange(OnLanguageChange value),
  }) {
    assert(onSignIn != null);
    assert(onLanguageChange != null);
    return onLanguageChange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onSignIn(OnSignIn value),
    Result onLanguageChange(OnLanguageChange value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onLanguageChange != null) {
      return onLanguageChange(this);
    }
    return orElse();
  }
}

abstract class OnLanguageChange implements SignInEvent {
  const factory OnLanguageChange({@required Locale locale}) =
      _$OnLanguageChange;

  Locale get locale;
  $OnLanguageChangeCopyWith<OnLanguageChange> get copyWith;
}

class _$SignInStateTearOff {
  const _$SignInStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  SignedInUsingEmailAndPassword signedInUsingEmailAndPassword() {
    return const SignedInUsingEmailAndPassword();
  }

// ignore: unused_element
  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }
}

// ignore: unused_element
const $SignInState = _$SignInStateTearOff();

mixin _$SignInState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signedInUsingEmailAndPassword(),
    @required Result unauthenticated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signedInUsingEmailAndPassword(),
    Result unauthenticated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required
        Result signedInUsingEmailAndPassword(
            SignedInUsingEmailAndPassword value),
    @required Result unauthenticated(Unauthenticated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signedInUsingEmailAndPassword(SignedInUsingEmailAndPassword value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  });
}

abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
}

class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SignInState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signedInUsingEmailAndPassword(),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(signedInUsingEmailAndPassword != null);
    assert(unauthenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signedInUsingEmailAndPassword(),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required
        Result signedInUsingEmailAndPassword(
            SignedInUsingEmailAndPassword value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(signedInUsingEmailAndPassword != null);
    assert(unauthenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signedInUsingEmailAndPassword(SignedInUsingEmailAndPassword value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SignInState {
  const factory Initial() = _$Initial;
}

abstract class $SignedInUsingEmailAndPasswordCopyWith<$Res> {
  factory $SignedInUsingEmailAndPasswordCopyWith(
          SignedInUsingEmailAndPassword value,
          $Res Function(SignedInUsingEmailAndPassword) then) =
      _$SignedInUsingEmailAndPasswordCopyWithImpl<$Res>;
}

class _$SignedInUsingEmailAndPasswordCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements $SignedInUsingEmailAndPasswordCopyWith<$Res> {
  _$SignedInUsingEmailAndPasswordCopyWithImpl(
      SignedInUsingEmailAndPassword _value,
      $Res Function(SignedInUsingEmailAndPassword) _then)
      : super(_value, (v) => _then(v as SignedInUsingEmailAndPassword));

  @override
  SignedInUsingEmailAndPassword get _value =>
      super._value as SignedInUsingEmailAndPassword;
}

class _$SignedInUsingEmailAndPassword implements SignedInUsingEmailAndPassword {
  const _$SignedInUsingEmailAndPassword();

  @override
  String toString() {
    return 'SignInState.signedInUsingEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignedInUsingEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signedInUsingEmailAndPassword(),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(signedInUsingEmailAndPassword != null);
    assert(unauthenticated != null);
    return signedInUsingEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signedInUsingEmailAndPassword(),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedInUsingEmailAndPassword != null) {
      return signedInUsingEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required
        Result signedInUsingEmailAndPassword(
            SignedInUsingEmailAndPassword value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(signedInUsingEmailAndPassword != null);
    assert(unauthenticated != null);
    return signedInUsingEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signedInUsingEmailAndPassword(SignedInUsingEmailAndPassword value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedInUsingEmailAndPassword != null) {
      return signedInUsingEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class SignedInUsingEmailAndPassword implements SignInState {
  const factory SignedInUsingEmailAndPassword() =
      _$SignedInUsingEmailAndPassword;
}

abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

class _$UnauthenticatedCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'SignInState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signedInUsingEmailAndPassword(),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(signedInUsingEmailAndPassword != null);
    assert(unauthenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signedInUsingEmailAndPassword(),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required
        Result signedInUsingEmailAndPassword(
            SignedInUsingEmailAndPassword value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(signedInUsingEmailAndPassword != null);
    assert(unauthenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signedInUsingEmailAndPassword(SignedInUsingEmailAndPassword value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements SignInState {
  const factory Unauthenticated() = _$Unauthenticated;
}

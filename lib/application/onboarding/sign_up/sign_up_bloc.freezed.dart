// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignUpEventTearOff {
  const _$SignUpEventTearOff();

// ignore: unused_element
  OnSignUp onSignUp(
      {@required Name name,
      @required EmailAddress emailAddress,
      @required Password password,
      @required Mobile mobile,
      @required Gender gender}) {
    return OnSignUp(
      name: name,
      emailAddress: emailAddress,
      password: password,
      mobile: mobile,
      gender: gender,
    );
  }
}

// ignore: unused_element
const $SignUpEvent = _$SignUpEventTearOff();

mixin _$SignUpEvent {
  Name get name;
  EmailAddress get emailAddress;
  Password get password;
  Mobile get mobile;
  Gender get gender;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result onSignUp(Name name, EmailAddress emailAddress, Password password,
            Mobile mobile, Gender gender),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onSignUp(Name name, EmailAddress emailAddress, Password password,
        Mobile mobile, Gender gender),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onSignUp(OnSignUp value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onSignUp(OnSignUp value),
    @required Result orElse(),
  });

  $SignUpEventCopyWith<SignUpEvent> get copyWith;
}

abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
  $Res call(
      {Name name,
      EmailAddress emailAddress,
      Password password,
      Mobile mobile,
      Gender gender});
}

class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;

  @override
  $Res call({
    Object name = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object mobile = freezed,
    Object gender = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as Name,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      mobile: mobile == freezed ? _value.mobile : mobile as Mobile,
      gender: gender == freezed ? _value.gender : gender as Gender,
    ));
  }
}

abstract class $OnSignUpCopyWith<$Res> implements $SignUpEventCopyWith<$Res> {
  factory $OnSignUpCopyWith(OnSignUp value, $Res Function(OnSignUp) then) =
      _$OnSignUpCopyWithImpl<$Res>;
  @override
  $Res call(
      {Name name,
      EmailAddress emailAddress,
      Password password,
      Mobile mobile,
      Gender gender});
}

class _$OnSignUpCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $OnSignUpCopyWith<$Res> {
  _$OnSignUpCopyWithImpl(OnSignUp _value, $Res Function(OnSignUp) _then)
      : super(_value, (v) => _then(v as OnSignUp));

  @override
  OnSignUp get _value => super._value as OnSignUp;

  @override
  $Res call({
    Object name = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object mobile = freezed,
    Object gender = freezed,
  }) {
    return _then(OnSignUp(
      name: name == freezed ? _value.name : name as Name,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      mobile: mobile == freezed ? _value.mobile : mobile as Mobile,
      gender: gender == freezed ? _value.gender : gender as Gender,
    ));
  }
}

class _$OnSignUp implements OnSignUp {
  const _$OnSignUp(
      {@required this.name,
      @required this.emailAddress,
      @required this.password,
      @required this.mobile,
      @required this.gender})
      : assert(name != null),
        assert(emailAddress != null),
        assert(password != null),
        assert(mobile != null),
        assert(gender != null);

  @override
  final Name name;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Mobile mobile;
  @override
  final Gender gender;

  @override
  String toString() {
    return 'SignUpEvent.onSignUp(name: $name, emailAddress: $emailAddress, password: $password, mobile: $mobile, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnSignUp &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(gender);

  @override
  $OnSignUpCopyWith<OnSignUp> get copyWith =>
      _$OnSignUpCopyWithImpl<OnSignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result onSignUp(Name name, EmailAddress emailAddress, Password password,
            Mobile mobile, Gender gender),
  }) {
    assert(onSignUp != null);
    return onSignUp(name, emailAddress, password, mobile, gender);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onSignUp(Name name, EmailAddress emailAddress, Password password,
        Mobile mobile, Gender gender),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onSignUp != null) {
      return onSignUp(name, emailAddress, password, mobile, gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onSignUp(OnSignUp value),
  }) {
    assert(onSignUp != null);
    return onSignUp(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onSignUp(OnSignUp value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onSignUp != null) {
      return onSignUp(this);
    }
    return orElse();
  }
}

abstract class OnSignUp implements SignUpEvent {
  const factory OnSignUp(
      {@required Name name,
      @required EmailAddress emailAddress,
      @required Password password,
      @required Mobile mobile,
      @required Gender gender}) = _$OnSignUp;

  @override
  Name get name;
  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  Mobile get mobile;
  @override
  Gender get gender;
  @override
  $OnSignUpCopyWith<OnSignUp> get copyWith;
}

class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  SignedUp signedUp() {
    return const SignedUp();
  }

// ignore: unused_element
  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }
}

// ignore: unused_element
const $SignUpState = _$SignUpStateTearOff();

mixin _$SignUpState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signedUp(),
    @required Result unauthenticated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signedUp(),
    Result unauthenticated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result signedUp(SignedUp value),
    @required Result unauthenticated(Unauthenticated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signedUp(SignedUp value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  });
}

abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
}

class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
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
    return 'SignUpState.initial()';
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
    @required Result signedUp(),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(signedUp != null);
    assert(unauthenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signedUp(),
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
    @required Result signedUp(SignedUp value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(signedUp != null);
    assert(unauthenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signedUp(SignedUp value),
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

abstract class Initial implements SignUpState {
  const factory Initial() = _$Initial;
}

abstract class $SignedUpCopyWith<$Res> {
  factory $SignedUpCopyWith(SignedUp value, $Res Function(SignedUp) then) =
      _$SignedUpCopyWithImpl<$Res>;
}

class _$SignedUpCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements $SignedUpCopyWith<$Res> {
  _$SignedUpCopyWithImpl(SignedUp _value, $Res Function(SignedUp) _then)
      : super(_value, (v) => _then(v as SignedUp));

  @override
  SignedUp get _value => super._value as SignedUp;
}

class _$SignedUp implements SignedUp {
  const _$SignedUp();

  @override
  String toString() {
    return 'SignUpState.signedUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignedUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signedUp(),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(signedUp != null);
    assert(unauthenticated != null);
    return signedUp();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signedUp(),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedUp != null) {
      return signedUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result signedUp(SignedUp value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(signedUp != null);
    assert(unauthenticated != null);
    return signedUp(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signedUp(SignedUp value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedUp != null) {
      return signedUp(this);
    }
    return orElse();
  }
}

abstract class SignedUp implements SignUpState {
  const factory SignedUp() = _$SignedUp;
}

abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

class _$UnauthenticatedCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
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
    return 'SignUpState.unauthenticated()';
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
    @required Result signedUp(),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(signedUp != null);
    assert(unauthenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signedUp(),
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
    @required Result signedUp(SignedUp value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(signedUp != null);
    assert(unauthenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signedUp(SignedUp value),
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

abstract class Unauthenticated implements SignUpState {
  const factory Unauthenticated() = _$Unauthenticated;
}

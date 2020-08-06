// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SplashEventTearOff {
  const _$SplashEventTearOff();

// ignore: unused_element
  AuthCheckRequested authCheckRequested() {
    return const AuthCheckRequested();
  }

// ignore: unused_element
  GetSavedLanguageRequested getSavedLanguageRequested() {
    return const GetSavedLanguageRequested();
  }
}

// ignore: unused_element
const $SplashEvent = _$SplashEventTearOff();

mixin _$SplashEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result getSavedLanguageRequested(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result getSavedLanguageRequested(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(AuthCheckRequested value),
    @required Result getSavedLanguageRequested(GetSavedLanguageRequested value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthCheckRequested value),
    Result getSavedLanguageRequested(GetSavedLanguageRequested value),
    @required Result orElse(),
  });
}

abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res>;
}

class _$SplashEventCopyWithImpl<$Res> implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  final SplashEvent _value;
  // ignore: unused_field
  final $Res Function(SplashEvent) _then;
}

abstract class $AuthCheckRequestedCopyWith<$Res> {
  factory $AuthCheckRequestedCopyWith(
          AuthCheckRequested value, $Res Function(AuthCheckRequested) then) =
      _$AuthCheckRequestedCopyWithImpl<$Res>;
}

class _$AuthCheckRequestedCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res>
    implements $AuthCheckRequestedCopyWith<$Res> {
  _$AuthCheckRequestedCopyWithImpl(
      AuthCheckRequested _value, $Res Function(AuthCheckRequested) _then)
      : super(_value, (v) => _then(v as AuthCheckRequested));

  @override
  AuthCheckRequested get _value => super._value as AuthCheckRequested;
}

class _$AuthCheckRequested implements AuthCheckRequested {
  const _$AuthCheckRequested();

  @override
  String toString() {
    return 'SplashEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result getSavedLanguageRequested(),
  }) {
    assert(authCheckRequested != null);
    assert(getSavedLanguageRequested != null);
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result getSavedLanguageRequested(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(AuthCheckRequested value),
    @required Result getSavedLanguageRequested(GetSavedLanguageRequested value),
  }) {
    assert(authCheckRequested != null);
    assert(getSavedLanguageRequested != null);
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthCheckRequested value),
    Result getSavedLanguageRequested(GetSavedLanguageRequested value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class AuthCheckRequested implements SplashEvent {
  const factory AuthCheckRequested() = _$AuthCheckRequested;
}

abstract class $GetSavedLanguageRequestedCopyWith<$Res> {
  factory $GetSavedLanguageRequestedCopyWith(GetSavedLanguageRequested value,
          $Res Function(GetSavedLanguageRequested) then) =
      _$GetSavedLanguageRequestedCopyWithImpl<$Res>;
}

class _$GetSavedLanguageRequestedCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res>
    implements $GetSavedLanguageRequestedCopyWith<$Res> {
  _$GetSavedLanguageRequestedCopyWithImpl(GetSavedLanguageRequested _value,
      $Res Function(GetSavedLanguageRequested) _then)
      : super(_value, (v) => _then(v as GetSavedLanguageRequested));

  @override
  GetSavedLanguageRequested get _value =>
      super._value as GetSavedLanguageRequested;
}

class _$GetSavedLanguageRequested implements GetSavedLanguageRequested {
  const _$GetSavedLanguageRequested();

  @override
  String toString() {
    return 'SplashEvent.getSavedLanguageRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetSavedLanguageRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result getSavedLanguageRequested(),
  }) {
    assert(authCheckRequested != null);
    assert(getSavedLanguageRequested != null);
    return getSavedLanguageRequested();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result getSavedLanguageRequested(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getSavedLanguageRequested != null) {
      return getSavedLanguageRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(AuthCheckRequested value),
    @required Result getSavedLanguageRequested(GetSavedLanguageRequested value),
  }) {
    assert(authCheckRequested != null);
    assert(getSavedLanguageRequested != null);
    return getSavedLanguageRequested(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthCheckRequested value),
    Result getSavedLanguageRequested(GetSavedLanguageRequested value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getSavedLanguageRequested != null) {
      return getSavedLanguageRequested(this);
    }
    return orElse();
  }
}

abstract class GetSavedLanguageRequested implements SplashEvent {
  const factory GetSavedLanguageRequested() = _$GetSavedLanguageRequested;
}

class _$SplashStateTearOff {
  const _$SplashStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Authenticated authenticated() {
    return const Authenticated();
  }

// ignore: unused_element
  Unauthenticated unaunthenticated() {
    return const Unauthenticated();
  }
}

// ignore: unused_element
const $SplashState = _$SplashStateTearOff();

mixin _$SplashState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(),
    @required Result unaunthenticated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unaunthenticated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authenticated(Authenticated value),
    @required Result unaunthenticated(Unauthenticated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result unaunthenticated(Unauthenticated value),
    @required Result orElse(),
  });
}

abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
}

class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;
  // ignore: unused_field
  final $Res Function(SplashState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
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
    return 'SplashState.initial()';
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
    @required Result authenticated(),
    @required Result unaunthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unaunthenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unaunthenticated(),
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
    @required Result authenticated(Authenticated value),
    @required Result unaunthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unaunthenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result unaunthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SplashState {
  const factory Initial() = _$Initial;
}

abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

class _$AuthenticatedCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;
}

class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'SplashState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(),
    @required Result unaunthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unaunthenticated != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unaunthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authenticated(Authenticated value),
    @required Result unaunthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unaunthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result unaunthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements SplashState {
  const factory Authenticated() = _$Authenticated;
}

abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

class _$UnauthenticatedCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res>
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
    return 'SplashState.unaunthenticated()';
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
    @required Result authenticated(),
    @required Result unaunthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unaunthenticated != null);
    return unaunthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unaunthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unaunthenticated != null) {
      return unaunthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authenticated(Authenticated value),
    @required Result unaunthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unaunthenticated != null);
    return unaunthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result unaunthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unaunthenticated != null) {
      return unaunthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements SplashState {
  const factory Unauthenticated() = _$Unauthenticated;
}

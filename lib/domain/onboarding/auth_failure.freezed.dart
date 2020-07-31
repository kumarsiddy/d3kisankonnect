// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  InvalidEmailPasswordCombinationError invalidEmailPasswordCombinationError() {
    return const InvalidEmailPasswordCombinationError();
  }

// ignore: unused_element
  EmailAlreadyRegistered emailAlreadyRegistered() {
    return const EmailAlreadyRegistered();
  }

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailPasswordCombinationError(),
    @required Result emailAlreadyRegistered(),
    @required Result serverError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailPasswordCombinationError(),
    Result emailAlreadyRegistered(),
    Result serverError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result invalidEmailPasswordCombinationError(
            InvalidEmailPasswordCombinationError value),
    @required Result emailAlreadyRegistered(EmailAlreadyRegistered value),
    @required Result serverError(ServerError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailPasswordCombinationError(
        InvalidEmailPasswordCombinationError value),
    Result emailAlreadyRegistered(EmailAlreadyRegistered value),
    Result serverError(ServerError value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $InvalidEmailPasswordCombinationErrorCopyWith<$Res> {
  factory $InvalidEmailPasswordCombinationErrorCopyWith(
          InvalidEmailPasswordCombinationError value,
          $Res Function(InvalidEmailPasswordCombinationError) then) =
      _$InvalidEmailPasswordCombinationErrorCopyWithImpl<$Res>;
}

class _$InvalidEmailPasswordCombinationErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailPasswordCombinationErrorCopyWith<$Res> {
  _$InvalidEmailPasswordCombinationErrorCopyWithImpl(
      InvalidEmailPasswordCombinationError _value,
      $Res Function(InvalidEmailPasswordCombinationError) _then)
      : super(_value, (v) => _then(v as InvalidEmailPasswordCombinationError));

  @override
  InvalidEmailPasswordCombinationError get _value =>
      super._value as InvalidEmailPasswordCombinationError;
}

class _$InvalidEmailPasswordCombinationError
    with DiagnosticableTreeMixin
    implements InvalidEmailPasswordCombinationError {
  const _$InvalidEmailPasswordCombinationError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.invalidEmailPasswordCombinationError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AuthFailure.invalidEmailPasswordCombinationError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmailPasswordCombinationError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailPasswordCombinationError(),
    @required Result emailAlreadyRegistered(),
    @required Result serverError(),
  }) {
    assert(invalidEmailPasswordCombinationError != null);
    assert(emailAlreadyRegistered != null);
    assert(serverError != null);
    return invalidEmailPasswordCombinationError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailPasswordCombinationError(),
    Result emailAlreadyRegistered(),
    Result serverError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailPasswordCombinationError != null) {
      return invalidEmailPasswordCombinationError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result invalidEmailPasswordCombinationError(
            InvalidEmailPasswordCombinationError value),
    @required Result emailAlreadyRegistered(EmailAlreadyRegistered value),
    @required Result serverError(ServerError value),
  }) {
    assert(invalidEmailPasswordCombinationError != null);
    assert(emailAlreadyRegistered != null);
    assert(serverError != null);
    return invalidEmailPasswordCombinationError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailPasswordCombinationError(
        InvalidEmailPasswordCombinationError value),
    Result emailAlreadyRegistered(EmailAlreadyRegistered value),
    Result serverError(ServerError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailPasswordCombinationError != null) {
      return invalidEmailPasswordCombinationError(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailPasswordCombinationError implements AuthFailure {
  const factory InvalidEmailPasswordCombinationError() =
      _$InvalidEmailPasswordCombinationError;
}

abstract class $EmailAlreadyRegisteredCopyWith<$Res> {
  factory $EmailAlreadyRegisteredCopyWith(EmailAlreadyRegistered value,
          $Res Function(EmailAlreadyRegistered) then) =
      _$EmailAlreadyRegisteredCopyWithImpl<$Res>;
}

class _$EmailAlreadyRegisteredCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadyRegisteredCopyWith<$Res> {
  _$EmailAlreadyRegisteredCopyWithImpl(EmailAlreadyRegistered _value,
      $Res Function(EmailAlreadyRegistered) _then)
      : super(_value, (v) => _then(v as EmailAlreadyRegistered));

  @override
  EmailAlreadyRegistered get _value => super._value as EmailAlreadyRegistered;
}

class _$EmailAlreadyRegistered
    with DiagnosticableTreeMixin
    implements EmailAlreadyRegistered {
  const _$EmailAlreadyRegistered();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.emailAlreadyRegistered()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.emailAlreadyRegistered'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyRegistered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailPasswordCombinationError(),
    @required Result emailAlreadyRegistered(),
    @required Result serverError(),
  }) {
    assert(invalidEmailPasswordCombinationError != null);
    assert(emailAlreadyRegistered != null);
    assert(serverError != null);
    return emailAlreadyRegistered();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailPasswordCombinationError(),
    Result emailAlreadyRegistered(),
    Result serverError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyRegistered != null) {
      return emailAlreadyRegistered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result invalidEmailPasswordCombinationError(
            InvalidEmailPasswordCombinationError value),
    @required Result emailAlreadyRegistered(EmailAlreadyRegistered value),
    @required Result serverError(ServerError value),
  }) {
    assert(invalidEmailPasswordCombinationError != null);
    assert(emailAlreadyRegistered != null);
    assert(serverError != null);
    return emailAlreadyRegistered(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailPasswordCombinationError(
        InvalidEmailPasswordCombinationError value),
    Result emailAlreadyRegistered(EmailAlreadyRegistered value),
    Result serverError(ServerError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyRegistered != null) {
      return emailAlreadyRegistered(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyRegistered implements AuthFailure {
  const factory EmailAlreadyRegistered() = _$EmailAlreadyRegistered;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError with DiagnosticableTreeMixin implements ServerError {
  const _$ServerError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.serverError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthFailure.serverError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmailPasswordCombinationError(),
    @required Result emailAlreadyRegistered(),
    @required Result serverError(),
  }) {
    assert(invalidEmailPasswordCombinationError != null);
    assert(emailAlreadyRegistered != null);
    assert(serverError != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmailPasswordCombinationError(),
    Result emailAlreadyRegistered(),
    Result serverError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result invalidEmailPasswordCombinationError(
            InvalidEmailPasswordCombinationError value),
    @required Result emailAlreadyRegistered(EmailAlreadyRegistered value),
    @required Result serverError(ServerError value),
  }) {
    assert(invalidEmailPasswordCombinationError != null);
    assert(emailAlreadyRegistered != null);
    assert(serverError != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmailPasswordCombinationError(
        InvalidEmailPasswordCombinationError value),
    Result emailAlreadyRegistered(EmailAlreadyRegistered value),
    Result serverError(ServerError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

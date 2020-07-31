// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'core_value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  InvalidEmail<T> invalidEmail<T>({@required String emailString}) {
    return InvalidEmail<T>(
      emailString: emailString,
    );
  }

// ignore: unused_element
  InvalidName<T> invalidName<T>({@required String nameString}) {
    return InvalidName<T>(
      nameString: nameString,
    );
  }

// ignore: unused_element
  InvalidPassword<T> invalidPassword<T>({@required String passwordString}) {
    return InvalidPassword<T>(
      passwordString: passwordString,
    );
  }

// ignore: unused_element
  InvalidMobile<T> invalidMobile<T>({@required String mobileString}) {
    return InvalidMobile<T>(
      mobileString: mobileString,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String emailString),
    @required Result invalidName(String nameString),
    @required Result invalidPassword(String passwordString),
    @required Result invalidMobile(String mobileString),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String emailString),
    Result invalidName(String nameString),
    Result invalidPassword(String passwordString),
    Result invalidMobile(String mobileString),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidName(InvalidName<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidMobile(InvalidMobile<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidName(InvalidName<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidMobile(InvalidMobile<T> value),
    @required Result orElse(),
  });
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String emailString});
}

class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object emailString = freezed,
  }) {
    return _then(InvalidEmail<T>(
      emailString:
          emailString == freezed ? _value.emailString : emailString as String,
    ));
  }
}

class _$InvalidEmail<T>
    with DiagnosticableTreeMixin
    implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.emailString})
      : assert(emailString != null);

  @override
  final String emailString;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidEmail(emailString: $emailString)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('emailString', emailString));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.emailString, emailString) ||
                const DeepCollectionEquality()
                    .equals(other.emailString, emailString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailString);

  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String emailString),
    @required Result invalidName(String nameString),
    @required Result invalidPassword(String passwordString),
    @required Result invalidMobile(String mobileString),
  }) {
    assert(invalidEmail != null);
    assert(invalidName != null);
    assert(invalidPassword != null);
    assert(invalidMobile != null);
    return invalidEmail(emailString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String emailString),
    Result invalidName(String nameString),
    Result invalidPassword(String passwordString),
    Result invalidMobile(String mobileString),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(emailString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidName(InvalidName<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidMobile(InvalidMobile<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidName != null);
    assert(invalidPassword != null);
    assert(invalidMobile != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidName(InvalidName<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidMobile(InvalidMobile<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required String emailString}) =
      _$InvalidEmail<T>;

  String get emailString;
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

abstract class $InvalidNameCopyWith<T, $Res> {
  factory $InvalidNameCopyWith(
          InvalidName<T> value, $Res Function(InvalidName<T>) then) =
      _$InvalidNameCopyWithImpl<T, $Res>;
  $Res call({String nameString});
}

class _$InvalidNameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidNameCopyWith<T, $Res> {
  _$InvalidNameCopyWithImpl(
      InvalidName<T> _value, $Res Function(InvalidName<T>) _then)
      : super(_value, (v) => _then(v as InvalidName<T>));

  @override
  InvalidName<T> get _value => super._value as InvalidName<T>;

  @override
  $Res call({
    Object nameString = freezed,
  }) {
    return _then(InvalidName<T>(
      nameString:
          nameString == freezed ? _value.nameString : nameString as String,
    ));
  }
}

class _$InvalidName<T> with DiagnosticableTreeMixin implements InvalidName<T> {
  const _$InvalidName({@required this.nameString}) : assert(nameString != null);

  @override
  final String nameString;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidName(nameString: $nameString)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidName'))
      ..add(DiagnosticsProperty('nameString', nameString));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidName<T> &&
            (identical(other.nameString, nameString) ||
                const DeepCollectionEquality()
                    .equals(other.nameString, nameString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameString);

  @override
  $InvalidNameCopyWith<T, InvalidName<T>> get copyWith =>
      _$InvalidNameCopyWithImpl<T, InvalidName<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String emailString),
    @required Result invalidName(String nameString),
    @required Result invalidPassword(String passwordString),
    @required Result invalidMobile(String mobileString),
  }) {
    assert(invalidEmail != null);
    assert(invalidName != null);
    assert(invalidPassword != null);
    assert(invalidMobile != null);
    return invalidName(nameString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String emailString),
    Result invalidName(String nameString),
    Result invalidPassword(String passwordString),
    Result invalidMobile(String mobileString),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidName != null) {
      return invalidName(nameString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidName(InvalidName<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidMobile(InvalidMobile<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidName != null);
    assert(invalidPassword != null);
    assert(invalidMobile != null);
    return invalidName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidName(InvalidName<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidMobile(InvalidMobile<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidName != null) {
      return invalidName(this);
    }
    return orElse();
  }
}

abstract class InvalidName<T> implements ValueFailure<T> {
  const factory InvalidName({@required String nameString}) = _$InvalidName<T>;

  String get nameString;
  $InvalidNameCopyWith<T, InvalidName<T>> get copyWith;
}

abstract class $InvalidPasswordCopyWith<T, $Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword<T> value, $Res Function(InvalidPassword<T>) then) =
      _$InvalidPasswordCopyWithImpl<T, $Res>;
  $Res call({String passwordString});
}

class _$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPasswordCopyWith<T, $Res> {
  _$InvalidPasswordCopyWithImpl(
      InvalidPassword<T> _value, $Res Function(InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as InvalidPassword<T>));

  @override
  InvalidPassword<T> get _value => super._value as InvalidPassword<T>;

  @override
  $Res call({
    Object passwordString = freezed,
  }) {
    return _then(InvalidPassword<T>(
      passwordString: passwordString == freezed
          ? _value.passwordString
          : passwordString as String,
    ));
  }
}

class _$InvalidPassword<T>
    with DiagnosticableTreeMixin
    implements InvalidPassword<T> {
  const _$InvalidPassword({@required this.passwordString})
      : assert(passwordString != null);

  @override
  final String passwordString;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidPassword(passwordString: $passwordString)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidPassword'))
      ..add(DiagnosticsProperty('passwordString', passwordString));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPassword<T> &&
            (identical(other.passwordString, passwordString) ||
                const DeepCollectionEquality()
                    .equals(other.passwordString, passwordString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(passwordString);

  @override
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith =>
      _$InvalidPasswordCopyWithImpl<T, InvalidPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String emailString),
    @required Result invalidName(String nameString),
    @required Result invalidPassword(String passwordString),
    @required Result invalidMobile(String mobileString),
  }) {
    assert(invalidEmail != null);
    assert(invalidName != null);
    assert(invalidPassword != null);
    assert(invalidMobile != null);
    return invalidPassword(passwordString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String emailString),
    Result invalidName(String nameString),
    Result invalidPassword(String passwordString),
    Result invalidMobile(String mobileString),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(passwordString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidName(InvalidName<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidMobile(InvalidMobile<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidName != null);
    assert(invalidPassword != null);
    assert(invalidMobile != null);
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidName(InvalidName<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidMobile(InvalidMobile<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements ValueFailure<T> {
  const factory InvalidPassword({@required String passwordString}) =
      _$InvalidPassword<T>;

  String get passwordString;
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith;
}

abstract class $InvalidMobileCopyWith<T, $Res> {
  factory $InvalidMobileCopyWith(
          InvalidMobile<T> value, $Res Function(InvalidMobile<T>) then) =
      _$InvalidMobileCopyWithImpl<T, $Res>;
  $Res call({String mobileString});
}

class _$InvalidMobileCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidMobileCopyWith<T, $Res> {
  _$InvalidMobileCopyWithImpl(
      InvalidMobile<T> _value, $Res Function(InvalidMobile<T>) _then)
      : super(_value, (v) => _then(v as InvalidMobile<T>));

  @override
  InvalidMobile<T> get _value => super._value as InvalidMobile<T>;

  @override
  $Res call({
    Object mobileString = freezed,
  }) {
    return _then(InvalidMobile<T>(
      mobileString: mobileString == freezed
          ? _value.mobileString
          : mobileString as String,
    ));
  }
}

class _$InvalidMobile<T>
    with DiagnosticableTreeMixin
    implements InvalidMobile<T> {
  const _$InvalidMobile({@required this.mobileString})
      : assert(mobileString != null);

  @override
  final String mobileString;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidMobile(mobileString: $mobileString)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidMobile'))
      ..add(DiagnosticsProperty('mobileString', mobileString));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidMobile<T> &&
            (identical(other.mobileString, mobileString) ||
                const DeepCollectionEquality()
                    .equals(other.mobileString, mobileString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mobileString);

  @override
  $InvalidMobileCopyWith<T, InvalidMobile<T>> get copyWith =>
      _$InvalidMobileCopyWithImpl<T, InvalidMobile<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String emailString),
    @required Result invalidName(String nameString),
    @required Result invalidPassword(String passwordString),
    @required Result invalidMobile(String mobileString),
  }) {
    assert(invalidEmail != null);
    assert(invalidName != null);
    assert(invalidPassword != null);
    assert(invalidMobile != null);
    return invalidMobile(mobileString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String emailString),
    Result invalidName(String nameString),
    Result invalidPassword(String passwordString),
    Result invalidMobile(String mobileString),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidMobile != null) {
      return invalidMobile(mobileString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidName(InvalidName<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidMobile(InvalidMobile<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidName != null);
    assert(invalidPassword != null);
    assert(invalidMobile != null);
    return invalidMobile(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidName(InvalidName<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidMobile(InvalidMobile<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidMobile != null) {
      return invalidMobile(this);
    }
    return orElse();
  }
}

abstract class InvalidMobile<T> implements ValueFailure<T> {
  const factory InvalidMobile({@required String mobileString}) =
      _$InvalidMobile<T>;

  String get mobileString;
  $InvalidMobileCopyWith<T, InvalidMobile<T>> get copyWith;
}

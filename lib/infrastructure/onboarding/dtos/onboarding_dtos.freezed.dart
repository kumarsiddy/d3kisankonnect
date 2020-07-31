// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'onboarding_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SignInDto _$SignInDtoFromJson(Map<String, dynamic> json) {
  return _SignInDto.fromJson(json);
}

class _$SignInDtoTearOff {
  const _$SignInDtoTearOff();

// ignore: unused_element
  _SignInDto call({@required String username, @required String password}) {
    return _SignInDto(
      username: username,
      password: password,
    );
  }
}

// ignore: unused_element
const $SignInDto = _$SignInDtoTearOff();

mixin _$SignInDto {
  String get username;
  String get password;

  Map<String, dynamic> toJson();
  $SignInDtoCopyWith<SignInDto> get copyWith;
}

abstract class $SignInDtoCopyWith<$Res> {
  factory $SignInDtoCopyWith(SignInDto value, $Res Function(SignInDto) then) =
      _$SignInDtoCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

class _$SignInDtoCopyWithImpl<$Res> implements $SignInDtoCopyWith<$Res> {
  _$SignInDtoCopyWithImpl(this._value, this._then);

  final SignInDto _value;
  // ignore: unused_field
  final $Res Function(SignInDto) _then;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

abstract class _$SignInDtoCopyWith<$Res> implements $SignInDtoCopyWith<$Res> {
  factory _$SignInDtoCopyWith(
          _SignInDto value, $Res Function(_SignInDto) then) =
      __$SignInDtoCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

class __$SignInDtoCopyWithImpl<$Res> extends _$SignInDtoCopyWithImpl<$Res>
    implements _$SignInDtoCopyWith<$Res> {
  __$SignInDtoCopyWithImpl(_SignInDto _value, $Res Function(_SignInDto) _then)
      : super(_value, (v) => _then(v as _SignInDto));

  @override
  _SignInDto get _value => super._value as _SignInDto;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_SignInDto(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()
class _$_SignInDto with DiagnosticableTreeMixin implements _SignInDto {
  const _$_SignInDto({@required this.username, @required this.password})
      : assert(username != null),
        assert(password != null);

  factory _$_SignInDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SignInDtoFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInDto(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInDto'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInDto &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @override
  _$SignInDtoCopyWith<_SignInDto> get copyWith =>
      __$SignInDtoCopyWithImpl<_SignInDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignInDtoToJson(this);
  }
}

abstract class _SignInDto implements SignInDto {
  const factory _SignInDto(
      {@required String username, @required String password}) = _$_SignInDto;

  factory _SignInDto.fromJson(Map<String, dynamic> json) =
      _$_SignInDto.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  _$SignInDtoCopyWith<_SignInDto> get copyWith;
}

SignInResponseDto _$SignInResponseDtoFromJson(Map<String, dynamic> json) {
  return _SignInResponseDto.fromJson(json);
}

class _$SignInResponseDtoTearOff {
  const _$SignInResponseDtoTearOff();

// ignore: unused_element
  _SignInResponseDto call({String message, bool isSuccess, String token}) {
    return _SignInResponseDto(
      message: message,
      isSuccess: isSuccess,
      token: token,
    );
  }
}

// ignore: unused_element
const $SignInResponseDto = _$SignInResponseDtoTearOff();

mixin _$SignInResponseDto {
  String get message;
  bool get isSuccess;
  String get token;

  Map<String, dynamic> toJson();
  $SignInResponseDtoCopyWith<SignInResponseDto> get copyWith;
}

abstract class $SignInResponseDtoCopyWith<$Res> {
  factory $SignInResponseDtoCopyWith(
          SignInResponseDto value, $Res Function(SignInResponseDto) then) =
      _$SignInResponseDtoCopyWithImpl<$Res>;
  $Res call({String message, bool isSuccess, String token});
}

class _$SignInResponseDtoCopyWithImpl<$Res>
    implements $SignInResponseDtoCopyWith<$Res> {
  _$SignInResponseDtoCopyWithImpl(this._value, this._then);

  final SignInResponseDto _value;
  // ignore: unused_field
  final $Res Function(SignInResponseDto) _then;

  @override
  $Res call({
    Object message = freezed,
    Object isSuccess = freezed,
    Object token = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

abstract class _$SignInResponseDtoCopyWith<$Res>
    implements $SignInResponseDtoCopyWith<$Res> {
  factory _$SignInResponseDtoCopyWith(
          _SignInResponseDto value, $Res Function(_SignInResponseDto) then) =
      __$SignInResponseDtoCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool isSuccess, String token});
}

class __$SignInResponseDtoCopyWithImpl<$Res>
    extends _$SignInResponseDtoCopyWithImpl<$Res>
    implements _$SignInResponseDtoCopyWith<$Res> {
  __$SignInResponseDtoCopyWithImpl(
      _SignInResponseDto _value, $Res Function(_SignInResponseDto) _then)
      : super(_value, (v) => _then(v as _SignInResponseDto));

  @override
  _SignInResponseDto get _value => super._value as _SignInResponseDto;

  @override
  $Res call({
    Object message = freezed,
    Object isSuccess = freezed,
    Object token = freezed,
  }) {
    return _then(_SignInResponseDto(
      message: message == freezed ? _value.message : message as String,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

@JsonSerializable()
class _$_SignInResponseDto
    with DiagnosticableTreeMixin
    implements _SignInResponseDto {
  const _$_SignInResponseDto({this.message, this.isSuccess, this.token});

  factory _$_SignInResponseDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SignInResponseDtoFromJson(json);

  @override
  final String message;
  @override
  final bool isSuccess;
  @override
  final String token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInResponseDto(message: $message, isSuccess: $isSuccess, token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInResponseDto'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('isSuccess', isSuccess))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInResponseDto &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(token);

  @override
  _$SignInResponseDtoCopyWith<_SignInResponseDto> get copyWith =>
      __$SignInResponseDtoCopyWithImpl<_SignInResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignInResponseDtoToJson(this);
  }
}

abstract class _SignInResponseDto implements SignInResponseDto {
  const factory _SignInResponseDto(
      {String message, bool isSuccess, String token}) = _$_SignInResponseDto;

  factory _SignInResponseDto.fromJson(Map<String, dynamic> json) =
      _$_SignInResponseDto.fromJson;

  @override
  String get message;
  @override
  bool get isSuccess;
  @override
  String get token;
  @override
  _$SignInResponseDtoCopyWith<_SignInResponseDto> get copyWith;
}

SignUpDto _$SignUpDtoFromJson(Map<String, dynamic> json) {
  return _SignUpDto.fromJson(json);
}

class _$SignUpDtoTearOff {
  const _$SignUpDtoTearOff();

// ignore: unused_element
  _SignUpDto call(
      {@required String name,
      @required String email,
      @required String mobile,
      @required String password,
      @required String gender}) {
    return _SignUpDto(
      name: name,
      email: email,
      mobile: mobile,
      password: password,
      gender: gender,
    );
  }
}

// ignore: unused_element
const $SignUpDto = _$SignUpDtoTearOff();

mixin _$SignUpDto {
  String get name;
  String get email;
  String get mobile;
  String get password;
  String get gender;

  Map<String, dynamic> toJson();
  $SignUpDtoCopyWith<SignUpDto> get copyWith;
}

abstract class $SignUpDtoCopyWith<$Res> {
  factory $SignUpDtoCopyWith(SignUpDto value, $Res Function(SignUpDto) then) =
      _$SignUpDtoCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String email,
      String mobile,
      String password,
      String gender});
}

class _$SignUpDtoCopyWithImpl<$Res> implements $SignUpDtoCopyWith<$Res> {
  _$SignUpDtoCopyWithImpl(this._value, this._then);

  final SignUpDto _value;
  // ignore: unused_field
  final $Res Function(SignUpDto) _then;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
    Object mobile = freezed,
    Object password = freezed,
    Object gender = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      mobile: mobile == freezed ? _value.mobile : mobile as String,
      password: password == freezed ? _value.password : password as String,
      gender: gender == freezed ? _value.gender : gender as String,
    ));
  }
}

abstract class _$SignUpDtoCopyWith<$Res> implements $SignUpDtoCopyWith<$Res> {
  factory _$SignUpDtoCopyWith(
          _SignUpDto value, $Res Function(_SignUpDto) then) =
      __$SignUpDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String email,
      String mobile,
      String password,
      String gender});
}

class __$SignUpDtoCopyWithImpl<$Res> extends _$SignUpDtoCopyWithImpl<$Res>
    implements _$SignUpDtoCopyWith<$Res> {
  __$SignUpDtoCopyWithImpl(_SignUpDto _value, $Res Function(_SignUpDto) _then)
      : super(_value, (v) => _then(v as _SignUpDto));

  @override
  _SignUpDto get _value => super._value as _SignUpDto;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
    Object mobile = freezed,
    Object password = freezed,
    Object gender = freezed,
  }) {
    return _then(_SignUpDto(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      mobile: mobile == freezed ? _value.mobile : mobile as String,
      password: password == freezed ? _value.password : password as String,
      gender: gender == freezed ? _value.gender : gender as String,
    ));
  }
}

@JsonSerializable()
class _$_SignUpDto with DiagnosticableTreeMixin implements _SignUpDto {
  const _$_SignUpDto(
      {@required this.name,
      @required this.email,
      @required this.mobile,
      @required this.password,
      @required this.gender})
      : assert(name != null),
        assert(email != null),
        assert(mobile != null),
        assert(password != null),
        assert(gender != null);

  factory _$_SignUpDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SignUpDtoFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String mobile;
  @override
  final String password;
  @override
  final String gender;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpDto(name: $name, email: $email, mobile: $mobile, password: $password, gender: $gender)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpDto'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('mobile', mobile))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('gender', gender));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(gender);

  @override
  _$SignUpDtoCopyWith<_SignUpDto> get copyWith =>
      __$SignUpDtoCopyWithImpl<_SignUpDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignUpDtoToJson(this);
  }
}

abstract class _SignUpDto implements SignUpDto {
  const factory _SignUpDto(
      {@required String name,
      @required String email,
      @required String mobile,
      @required String password,
      @required String gender}) = _$_SignUpDto;

  factory _SignUpDto.fromJson(Map<String, dynamic> json) =
      _$_SignUpDto.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get mobile;
  @override
  String get password;
  @override
  String get gender;
  @override
  _$SignUpDtoCopyWith<_SignUpDto> get copyWith;
}

SignUpResponseDto _$SignUpResponseDtoFromJson(Map<String, dynamic> json) {
  return _SignUpResponseDto.fromJson(json);
}

class _$SignUpResponseDtoTearOff {
  const _$SignUpResponseDtoTearOff();

// ignore: unused_element
  _SignUpResponseDto call({String message, bool isSuccess, String token}) {
    return _SignUpResponseDto(
      message: message,
      isSuccess: isSuccess,
      token: token,
    );
  }
}

// ignore: unused_element
const $SignUpResponseDto = _$SignUpResponseDtoTearOff();

mixin _$SignUpResponseDto {
  String get message;
  bool get isSuccess;
  String get token;

  Map<String, dynamic> toJson();
  $SignUpResponseDtoCopyWith<SignUpResponseDto> get copyWith;
}

abstract class $SignUpResponseDtoCopyWith<$Res> {
  factory $SignUpResponseDtoCopyWith(
          SignUpResponseDto value, $Res Function(SignUpResponseDto) then) =
      _$SignUpResponseDtoCopyWithImpl<$Res>;
  $Res call({String message, bool isSuccess, String token});
}

class _$SignUpResponseDtoCopyWithImpl<$Res>
    implements $SignUpResponseDtoCopyWith<$Res> {
  _$SignUpResponseDtoCopyWithImpl(this._value, this._then);

  final SignUpResponseDto _value;
  // ignore: unused_field
  final $Res Function(SignUpResponseDto) _then;

  @override
  $Res call({
    Object message = freezed,
    Object isSuccess = freezed,
    Object token = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

abstract class _$SignUpResponseDtoCopyWith<$Res>
    implements $SignUpResponseDtoCopyWith<$Res> {
  factory _$SignUpResponseDtoCopyWith(
          _SignUpResponseDto value, $Res Function(_SignUpResponseDto) then) =
      __$SignUpResponseDtoCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool isSuccess, String token});
}

class __$SignUpResponseDtoCopyWithImpl<$Res>
    extends _$SignUpResponseDtoCopyWithImpl<$Res>
    implements _$SignUpResponseDtoCopyWith<$Res> {
  __$SignUpResponseDtoCopyWithImpl(
      _SignUpResponseDto _value, $Res Function(_SignUpResponseDto) _then)
      : super(_value, (v) => _then(v as _SignUpResponseDto));

  @override
  _SignUpResponseDto get _value => super._value as _SignUpResponseDto;

  @override
  $Res call({
    Object message = freezed,
    Object isSuccess = freezed,
    Object token = freezed,
  }) {
    return _then(_SignUpResponseDto(
      message: message == freezed ? _value.message : message as String,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      token: token == freezed ? _value.token : token as String,
    ));
  }
}

@JsonSerializable()
class _$_SignUpResponseDto
    with DiagnosticableTreeMixin
    implements _SignUpResponseDto {
  const _$_SignUpResponseDto({this.message, this.isSuccess, this.token});

  factory _$_SignUpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SignUpResponseDtoFromJson(json);

  @override
  final String message;
  @override
  final bool isSuccess;
  @override
  final String token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpResponseDto(message: $message, isSuccess: $isSuccess, token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpResponseDto'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('isSuccess', isSuccess))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpResponseDto &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(token);

  @override
  _$SignUpResponseDtoCopyWith<_SignUpResponseDto> get copyWith =>
      __$SignUpResponseDtoCopyWithImpl<_SignUpResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignUpResponseDtoToJson(this);
  }
}

abstract class _SignUpResponseDto implements SignUpResponseDto {
  const factory _SignUpResponseDto(
      {String message, bool isSuccess, String token}) = _$_SignUpResponseDto;

  factory _SignUpResponseDto.fromJson(Map<String, dynamic> json) =
      _$_SignUpResponseDto.fromJson;

  @override
  String get message;
  @override
  bool get isSuccess;
  @override
  String get token;
  @override
  _$SignUpResponseDtoCopyWith<_SignUpResponseDto> get copyWith;
}

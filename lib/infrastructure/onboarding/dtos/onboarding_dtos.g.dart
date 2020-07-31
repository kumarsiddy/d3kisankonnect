// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignInDto _$_$_SignInDtoFromJson(Map<String, dynamic> json) {
  return _$_SignInDto(
    username: json['username'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$_$_SignInDtoToJson(_$_SignInDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_$_SignInResponseDto _$_$_SignInResponseDtoFromJson(Map<String, dynamic> json) {
  return _$_SignInResponseDto(
    message: json['message'] as String,
    isSuccess: json['isSuccess'] as bool,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_SignInResponseDtoToJson(
        _$_SignInResponseDto instance) =>
    <String, dynamic>{
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'token': instance.token,
    };

_$_SignUpDto _$_$_SignUpDtoFromJson(Map<String, dynamic> json) {
  return _$_SignUpDto(
    name: json['name'] as String,
    email: json['email'] as String,
    mobile: json['mobile'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$_$_SignUpDtoToJson(_$_SignUpDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
      'password': instance.password,
    };

_$_SignUpResponseDto _$_$_SignUpResponseDtoFromJson(Map<String, dynamic> json) {
  return _$_SignUpResponseDto(
    message: json['message'] as String,
    isSuccess: json['isSuccess'] as bool,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_SignUpResponseDtoToJson(
        _$_SignUpResponseDto instance) =>
    <String, dynamic>{
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'token': instance.token,
    };

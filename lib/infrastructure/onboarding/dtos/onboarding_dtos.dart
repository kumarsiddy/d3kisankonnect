import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'onboarding_dtos.freezed.dart';
part 'onboarding_dtos.g.dart';

@freezed
abstract class SignInDto implements _$SignInDto {
  const factory SignInDto({
    @required String username,
    @required String password,
  }) = _SignInDto;

  factory SignInDto.fromJson(Map<String, dynamic> json) =>
      _$SignInDtoFromJson(json);
}

@freezed
abstract class SignInResponseDto implements _$SignInResponseDto {
  const factory SignInResponseDto({
    String message,
    bool isSuccess,
    String token,
  }) = _SignInResponseDto;

  factory SignInResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseDtoFromJson(json);
}

@freezed
abstract class SignUpDto implements _$SignUpDto {
  const factory SignUpDto({
    @required String name,
    @required String email,
    @required String mobile,
    @required String password,
    @required String gender,
  }) = _SignUpDto;

  factory SignUpDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpDtoFromJson(json);
}

@freezed
abstract class SignUpResponseDto implements _$SignUpResponseDto {
  const factory SignUpResponseDto({
    String message,
    bool isSuccess,
    String token,
  }) = _SignUpResponseDto;

  factory SignUpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseDtoFromJson(json);
}

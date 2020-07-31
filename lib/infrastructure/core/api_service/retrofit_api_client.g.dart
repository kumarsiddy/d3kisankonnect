// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrofit_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RetrofitApiClient implements RetrofitApiClient {
  _RetrofitApiClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  signIn(signInDto) async {
    ArgumentError.checkNotNull(signInDto, 'signInDto');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = signInDto;
    final Response<Map<String, dynamic>> _result = await _dio.request('/signin',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = SignInResponseDto.fromJson(_result.data);
    return value;
  }

  @override
  signUp(signUpDto) async {
    ArgumentError.checkNotNull(signUpDto, 'signUpDto');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = signUpDto;
    final Response<Map<String, dynamic>> _result = await _dio.request('/signup',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = SignUpResponseDto.fromJson(_result.data);
    return value;
  }
}

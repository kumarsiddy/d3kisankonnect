import 'package:d3kisankonnect/infrastructure/core/api_service/retrofit_api_client.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  // Do not change name.
  static const _USER_STATUS = 'userStatus';

  @Singleton()
  Dio get dio => Dio();

  @Singleton()
  RetrofitApiClient get retrofitClient =>
      RetrofitApiClient(dio, baseUrl: 'http://192.168.1.11:3000');

  @preResolve
  Future<LazyBox<dynamic>> get userStatusBox => Hive.openLazyBox(_USER_STATUS);
}

import 'package:d3kisankonnect/infrastructure/core/api_service/retrofit_api_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @Singleton()
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @Singleton()
  Dio get dio => Dio();

  @Singleton()
  RetrofitApiClient get retrofitClient =>
      RetrofitApiClient(dio, baseUrl: 'http://192.168.1.11:3000');
}

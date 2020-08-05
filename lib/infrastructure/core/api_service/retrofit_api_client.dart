import 'package:d3kisankonnect/infrastructure/onboarding/dtos/onboarding_dtos.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'retrofit_api_client.g.dart';

@RestApi()
abstract class RetrofitApiClient {
  factory RetrofitApiClient(Dio dio, {String baseUrl}) = _RetrofitApiClient;

  @POST('/signin')
  Future<SignInResponseDto> signIn(@Body() SignInDto signInDto);

  @POST('/signup')
  Future<SignUpResponseDto> signUp(@Body() SignUpDto signUpDto);

  @GET('/getlocalejson/{locale}')
  Future<HttpResponse> getLocaleJson(@Path('locale') String locale);
}

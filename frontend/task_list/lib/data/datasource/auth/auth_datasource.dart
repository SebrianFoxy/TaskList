import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../dto_s/login/login_response/login_response_dto.dart';
import '../../dto_s/refresh_token/refresh_token_response_dto.dart';
import '../../dto_s/registration/registration_response/registration_response_dto.dart';

part 'auth_datasource.g.dart';

@RestApi(baseUrl: 'http://192.168.25.195:8000/api/v1')
abstract class AuthDatasource {
  factory AuthDatasource(Dio dio) = _AuthDatasource;

  @POST('/auth/login')
  Future<LoginResponseDTO> login(@Body() Map<String, dynamic> request);

  @GET('/auth/refresh_token')
  Future<RefreshTokenResponseDTO> refreshToken(
      @Header("accept") String accept,
      @Header("Authorization") String authorization,
      );

  @POST('/auth/registration')
  Future<RegistrationResponseDTO> registration(@Body() Map<String, dynamic> request);

}
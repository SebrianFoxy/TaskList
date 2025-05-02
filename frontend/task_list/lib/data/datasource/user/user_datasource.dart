import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:task_manager_mobile/data/dto_s/user/user_response/user_response_dto.dart';

import '../../dto_s/telegram_user/telegram_user_response/telegram_user_response_dto.dart';

part 'user_datasource.g.dart';

@RestApi(baseUrl: 'http://192.168.100.5:8000/api/v1')
abstract class UserDatasource {
  factory UserDatasource(Dio dio) = _UserDatasource;

  @GET('/user')
  Future<UserResponseDTO> getUserInfo(
      @Header("accept") String accept,
      @Header("Authorization") String authorization,);

  @GET('/user/check_telegram_link')
  Future<TelegramUserResponseDTO> checkTelegramLink(
      @Header("accept") String accept,
      @Header("Authorization") String authorization,);

  @DELETE('/user/telegram_unlink')
  Future<void> unlinkTelegram(
      @Header("accept") String accept,
      @Header("Authorization") String authorization,);
}